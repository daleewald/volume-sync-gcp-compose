#!/bin/bash

export GCP_PROJECT_ID="your-project-id";
export GCP_BUCKET_NAME="your-bucket-name";
export GCP_KEY_FILE_FULL_PATH="/path/to/key-1234567890.json";
export MOUNT_SYNC_DIRECTORY="/some/parent/dir";
export INCLUDE_FILE_PATTERN="**/*";
export EXCLUDE_FILE_PATTERN="";

docker-compose pull && docker-compose up -d