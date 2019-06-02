# volume-sync-gcp-compose

## Description
Places a watch on a mounted directory structure, watching for additions and changes. These events will create jobs in a queue and reference the event information. A worker processes the jobs and performs uploads to, or removals from, GCP Cloud Storage.

## Requirements
Google Cloud:
1. Create a project
2. Create a Service Account with Editor access to the project and Storage Object Admin access to Cloud Storage
3. Create a Key and download the .json file for the Service Account
4. Create a Cloud Storage Bucket

Workstation:
1. Install Docker
2. Specify environment variables

- `GCP_PROJECT_ID`: the target Google Cloud project
- `GCP_BUCKET_NAME`" the target GCP Cloud Storage bucket, without the gs:// prefix.
- `GCP_KEY_FILE_FULL_PATH`: the full path to the .json key file for the service account. This file will be bind-mounted to the watcher container.
- `MOUNT_SYNC_DIRECTORY`: the root directory on the docker host that will be bind-mounted to the watcher and worker containers.
- `INCLUDE_FILE_PATTERN`: the pattern relative to the `MOUNT_SYNC_DIRECTORY` that specifies the watching context of the watcher container. i.e. `**/*.txt` or `DesiredSubFolder/*` etc.
- `EXCLUDE_FILE_PATTERN`: regex pattern to be configured on the watcher to exclude files within the watching context. (TBD) This environment variable is currently not in use (but watcher will ignore .dotfiles and files that end with `~`).

## Run
`docker-compose up`
