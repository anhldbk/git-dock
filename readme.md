# GitDock: Git-based Docker Registry

## Overview

Your corporate may block your access to DockerHub.

If Github is accessible, there's a workaround. Here's how:

- Dump Docker images on your personal machines
- Split the images into smaller files and store on Git (without using [LFS](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage))
- Join and load the images on your corporate machines

## Usage

Currently only `ollama/ollama:0.1.32` is supported

```bash
./scripts/load.sh
```
