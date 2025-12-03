#!/bin/bash
#SBATCH --job-name=to-zenodo
#SBATCH --error=to-zenodo-%j.err
#SBATCH --output=to-zenodo-%j.out
#SBATCH --cpus-per-task=2      # number of CPUs
#SBATCH --mem=4G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

TOKEN="<your_token>"
ZENODO_API="https://zenodo.org/api"
FILE_TO_ZENODO="build_salmon_index.txt"

# JSON metadata
METADATA='{

  "metadata": {
    "title": "Master'\''s Thesis in Bioinformatics 2025",
    "upload_type": "dataset",
    "description": "This repository contains files used in my Master'\''s project",
    "creators": [
      {"name": "Salomon Marquez", "affiliation": "CIMA University of Navarra"}
    ],
    "keywords": ["bioinformatics", "RNA-seq", "Nextflow", "DESeq", "DTU"],
    "license": "cc-by-4.0",
    "access_right": "open"
  }
}'

echo "Creating Zenodo deposit..."
deposit_response=$(curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $TOKEN" \
  -d "$METADATA" \
  "$ZENODO_API/deposit/depositions")

# Extract deposit ID and bucket URL
deposit_id=$(echo "$deposit_response" | jq -r '.id')
bucket_url=$(echo "$deposit_response" | jq -r '.links.bucket')

echo "Deposit ID: $deposit_id"
echo "Bucket URL: $bucket_url"

if [[ "$deposit_id" == "null" || -z "$deposit_id" ]]; then
  echo "ERROR: Deposit creation failed"
  echo "$deposit_response"
  exit 1
fi

# Upload data
echo "Uploading dataset..."
curl --progress-bar \
  -H "Authorization: Bearer $TOKEN" \
  --upload-file $FILE_TO_ZENODO \
  "$bucket_url/$FILE_TO_ZENODO"

echo "Done."

# Upload documentation
#echo "Uploading README..."
#curl --progress-bar \
#  -H "Authorization: Bearer $TOKEN" \
#  --upload-file README.md \
#  "$bucket_url/README.md"

# Publish
#echo "Publishing..."
#curl -X POST \
#  -H "Authorization: Bearer $TOKEN" \
#  "$ZENODO_API/deposit/depositions/$deposit_id/actions/publish"


