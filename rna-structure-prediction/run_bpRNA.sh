#!/usr/bin/env bash

# Run bpRNA on all .db files in the current directory
# From the commmand line: 
# ./run_bpRNA.sh

# Stop on error, undefined variable, or failed pipe
set -euo pipefail

BPRNA="/Volumes/DataWinBackup/00_MASTER UOC BIOINFORMATICA - TEMPORAL/TFM-UOC/RNAstructure/bpRNA/bpRNA.pl"

# Sanity check
if [[ ! -x "$BPRNA" ]]; then
    echo "ERROR: bpRNA.pl not found or not executable:"
    echo "  $BPRNA"
    exit 1
fi

# Process all .db files in current directory
for f in *.db; do
    [[ -e "$f" ]] || { echo "No .db files found"; exit 1; }
    echo "Running bpRNA on $f"
    perl "$BPRNA" "$f"
done

echo "✔ bpRNA processing completed."
