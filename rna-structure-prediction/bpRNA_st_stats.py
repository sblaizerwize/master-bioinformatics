#!/usr/bin/env python3

import argparse
import glob
import csv
from collections import Counter, defaultdict

# How to run this file from command line:
# python3 bpRNA_st_stats.py input.st output.csv 

# --------------------------------------------------
# Argument parser
# --------------------------------------------------
parser = argparse.ArgumentParser(
    description="Compute structural statistics from bpRNA .st files"
)

parser.add_argument(
    "input",
    nargs="+",
    help="Input .st files or glob patterns (e.g. *.st or folder/*.st)"
)

parser.add_argument(
    "output",
    help="Output CSV file"
)

args = parser.parse_args()

# --------------------------------------------------
# Expand glob patterns
# --------------------------------------------------
st_files = []
for pattern in args.input:
    st_files.extend(glob.glob(pattern))

if not st_files:
    raise SystemExit("ERROR: No .st files found.")

# --------------------------------------------------
# .st parser
# --------------------------------------------------
def parse_st_file(st_file):
    data = {
        "id": None,
        "length": None,
        "nt_counts": Counter(),              # nucleotide-level annotation
        "obj_ids": defaultdict(set)          # unique structural objects
    }

    with open(st_file) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            # Metadata
            if line.startswith("#Name:"):
                data["id"] = line.split(":", 1)[1].strip()

            elif line.startswith("#Length:"):
                data["length"] = int(line.split(":", 1)[1])

            # Nucleotide-level structure annotation
            elif (
                data["length"] is not None
                and len(line) == data["length"]
                and set(line) <= set("SHIBEM")
            ):
                data["nt_counts"].update(line)

            # Structural objects (S1, H1, I3.2, B2.1, etc.)
            elif line[0] in "SHIBEM" and line[1].isdigit():
                token = line.split()[0]       # e.g. I3.2
                base_id = token.split(".")[0] # e.g. I3
                element = base_id[0]          # I
                data["obj_ids"][element].add(base_id)

    if data["id"] is None or data["length"] is None:
        raise ValueError(f"Malformed .st file: {st_file}")

    return data

# --------------------------------------------------
# Process all files
# --------------------------------------------------
rows = []

for st in st_files:
    d = parse_st_file(st)
    L = d["length"]

    row = {
        "id": d["id"],
        "length": L,

        # nucleotide-level fractions
        "stem_nt_frac": d["nt_counts"]["S"] / L,
        "hairpin_nt_frac": d["nt_counts"]["H"] / L,
        "internal_nt_frac": d["nt_counts"]["I"] / L,
        "bulge_nt_frac": d["nt_counts"]["B"] / L,
        "external_nt_frac": d["nt_counts"]["E"] / L,

        # object-level counts (NO double counting)
        "n_stems": len(d["obj_ids"]["S"]),
        "n_hairpins": len(d["obj_ids"]["H"]),
        "n_internal_loops": len(d["obj_ids"]["I"]),
        "n_bulges": len(d["obj_ids"]["B"]),
        "n_multiloops": len(d["obj_ids"]["M"]),
        "n_external_regions": len(d["obj_ids"]["E"]),
    }

    rows.append(row)

# --------------------------------------------------
# Write CSV
# --------------------------------------------------
with open(args.output, "w", newline="") as out:
    writer = csv.DictWriter(out, fieldnames=rows[0].keys())
    writer.writeheader()
    writer.writerows(rows)

print(f"✔ Processed {len(rows)} .st files → {args.output}")



