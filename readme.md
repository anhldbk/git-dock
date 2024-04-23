# GitDock: Git-based Docker Registry

## Overview

Your corporate may block your access to DockerHub.

If Github is accessible, there's a workaround. Here's how:

- Dump Docker images on your personal machines
- Split the images into smaller files and store on Git (without using [LFS](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage))
- Join and load the images on your corporate machines

## Usage

### Dump an image

```bash
./scripts/dump.sh <image-tag>
```

For example:

```bash
$ ./scripts/dump.sh alpine:latest
💾 Dumping alpine:latest...

output path: registry/alpine-latest.tar
parent dir: registry
Image file is split successfully
The file is removed. Please commit

🚀 Done
```

### Load an image

```bash
./scripts/load.sh <image-tag>
```

For example:

```bash
$ ./scripts/load.sh alpine:latest
💾 Loading alpine:latest...

image path: registry/alpine-latest.tar
Joining image files...
Loaded image: alpine:latest
The temporary image file is removed.

🚀 Done
```
