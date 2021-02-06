# Overview

This demo is to show how to use skaffold for dev environment, it will redeploy our app whenever the code changes.

## Setup

Run the script `skaffold-demo/install.sh` to set up the environment we're going to test in. This will do:

- install skaffold
- set up local docker registry
- build a docker image from our project files

## Deployment

A deployment can be used in Kubernetes to keep our application up and running. The deployment config file resides in `k8s/app-deploy.yml` file.

## Skaffold

From the root directory, run `skaffold init` command to have skaffold build `skaffold.yaml` file automatically. The deployment is ready to host our application and skaffold will redeploy our app once changes. Run `skaffold dev` to start tracking changes in the code.
