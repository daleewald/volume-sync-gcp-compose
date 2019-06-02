# volume-sync-gcp-compose

## Description
Places a watch on a mounted directory structure, watching for additions and changes. These events will create jobs in a queue and reference the event information. A worker processes the jobs and performs uploads to, or removals from, GCP Cloud Storage.

## Requirements
Google Cloud:
1. Create a project
2. Create a Service Account with Edit access to the project and Storage Admin access to Cloud Storage
3. Create and download a Key .json file for the Service Account
4. Create a Cloud Storage Bucket

Workstation:
1. Install Docker
2. Specify environment variables

`GCP_PROJECT_ID` - the target Google Cloud project
`GCP_BUCKET_NAME` - the target GCP Cloud Storage bucket, without the gs:// prefix.
`GCP_KEY_FILE_FULL_PATH` - the full path to the .json key file for the service account. This file will be bind-mounted to the watcher container.
`MOUNT_SYNC_DIRECTORY` - the root directory on the docker host that will be bind-mounted to the watcher and worker containers.
`INCLUDE_FILE_PATTERN` - the pattern relative to the `MOUNT_SYNC_DIRECTORY` that specifies the watching context of the watcher container.

## Run
`docker compose up`
