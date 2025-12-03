#!/bin/bash
#SBATCH --job-name=to-zenodo
#SBATCH --error=to-zenodo-%j.err
#SBATCH --output=to-zenodo-%j.out
#SBATCH --cpus-per-task=2      # number of CPUs
#SBATCH --mem=4G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

TOKEN="<your_token>"
ZENODO_API="https://zenodo.org/api"
FILE_TO_ZENODO="gencode.v49.primary_assembly.annotation.filtered.gencode.gtf.gz"

# Extract deposit ID and bucket URL
deposit_id="<your_deposit_id>"
bucket_url="<your_bucket_url>"

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

# Publish
#echo "Publishing..."
#curl -X POST \
#  -H "Authorization: Bearer $TOKEN" \
#  "$ZENODO_API/deposit/depositions/$deposit_id/actions/publish"


