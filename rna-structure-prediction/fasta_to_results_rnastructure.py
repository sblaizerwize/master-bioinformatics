import argparse
import subprocess
import os

# How to run this script:
# python3 fasta_to_results_rnastructure.py isoforms_eocrc.fasta rnastructure_eocrc.csv

# Check usage by running:
# python3 fasta_to_results_rnastructure.py -h

# Set up argument parser
parser = argparse.ArgumentParser(
    description="Fold RNA sequences using RNAstructure"
)

parser.add_argument(
    "input_file",
    help="Input FASTA file containing RNA sequences"
)

parser.add_argument(
    "output_file",
    help="Out CSV file where results will be written"
)

args = parser.parse_args()
input_file = args.input_file
output_file = args.output_file

# Source RNAstructure data tables
DATAPATH = "/Applications/RNAstructure/data_tables"
os.environ["DATAPATH"] = DATAPATH

# Define a simple FASTA parser
def read_fasta(fasta_file):
    """FASTA parser"""
    seq_id = None
    seq = []

    with open(fasta_file) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            if line.startswith(">"):
                if seq_id is not None:
                    yield seq_id, "".join(seq)
                seq_id = line[1:].strip()  
                seq = []
            else:
                seq.append(line.upper())

        if seq_id is not None:
            yield seq_id, "".join(seq)

# Use RNAstructure to fold sequences and convert to dot-bracket notation
with open(output_file, "w") as out:
    out.write("id,dotbracket,sequence,energy\n")

    for seq_id, sequence in read_fasta(input_file):

        fasta_file = f"{seq_id}.fa"
        ct_file = f"{seq_id}.ct"
        db_file = f"{seq_id}.db"
        
        # Transcribe DNA to RNA
        sequence = sequence.replace("T", "U")

        # Write a temporary FASTA file 
        with open(fasta_file, "w") as f:
            f.write(f">{seq_id}\n{sequence}\n")

        # Fold RNA using RNAstructure generating CT file
        subprocess.run(
            ["Fold", fasta_file, ct_file],
            check=True
        )
        
        # Generate 2D structure image 
        subprocess.run(
            ["draw", ct_file, f"{seq_id}.svg", "--svg", "--number", "1"],
            check=True
        )
        
        # Convert SVG image to PDF
        subprocess.run(
            ["rsvg-convert",
             f"{seq_id}.svg",
             "-f", "pdf",
             "-z", "1.5",
             "-o", f"{seq_id}.pdf"],
         check=True
        )

        # Convert CT file to dot-bracket generating DB file
        subprocess.run(
            ["ct2dot", ct_file, "1", db_file],
            check=True
        )

        # Parse DB file
        with open(db_file) as f:
            lines = f.read().strip().splitlines()
            energy = float(lines[0].split()[2])
            seq_out = lines[1]
            dotbracket = lines[2]

        # Write CSV row
        out.write(f"{seq_id},{dotbracket},{seq_out},{energy}\n")

        # Cleanup
        os.remove(fasta_file)
        #os.remove(ct_file)
        #os.remove(db_file)
