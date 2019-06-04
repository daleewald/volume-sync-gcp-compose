SET GCP_PROJECT_ID=your-project-id
SET GCP_BUCKET_NAME=your-bucket-name
SET GCP_KEY_FILE_FULL_PATH=c:/path/to/key-1234567890.json
SET MOUNT_SYNC_DIRECTORY=d:/some/parent/dir
SET INCLUDE_FILE_PATTERN=**/*
SET EXCLUDE_FILE_PATTERN=

docker-compose pull && docker-compose up -d