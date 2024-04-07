#!/bin/bash
set -u

get_all_buckets() {
   aws s3 ls
}

create_bucket() {
   aws s3 mb "s3://$1"
}

for bucket_name in $(echo "${BUCKET_NAMES}" | tr ";" "\n")
do
  echo "[INFO] creating bucket ${bucket_name}"
  create_bucket "${bucket_name}"
done

echo "[INFO] all buckets are:"
get_all_buckets