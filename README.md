# trivy

[![Docker Pulls](https://img.shields.io/docker/pulls/kostyrev/docker-trivy-awscli.svg)]()

Image with [trivy](https://github.com/aquasecurity/trivy) and awscli for use in CI pipelines.

## Supported tags and respective `Dockerfile` links

- `latest` [Dockerfile](https://github.com/kostyrev/docker-trivy-awscli/blob/master/Dockerfile)
- `0.10.1` [0.10.1/Dockerfile](https://github.com/kostyrev/docker-trivy-awscli/blob/0.10.1/Dockerfile)

## Overview

The main purpose of this image is to use it in CI pipelines, e.g. to build docker images and scan them with trivy and push in AWS ECR.

## License

[MIT](https://github.com/kostyrev/docker-trivy-awscli/blob/master/LICENSE).
