# Bootree Skaffold Project

This project uses Skaffold to manage the development and deployment of the Bootree microservices, including `bootree-users` and `bootree-bots`.

## Overview

Skaffold is a command-line tool that facilitates continuous development for Kubernetes applications. This project includes configurations for building, syncing, and deploying the `bootree-users` and `bootree-bots` microservices.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Kubernetes](https://kubernetes.io/docs/setup/)
- [Skaffold](https://skaffold.dev/docs/install/)
- [Nginx ingress controller](https://docs.nginx.com/nginx-ingress-controller/installation/installing-nic/)

## Installation

1. Clone the repositories:

    ```sh
    git clone git@github.com:ecuation/bootree.git
    cd bootree
    ```

2. Set execution permissions for setup.sh file

    ```sh
    chmod +x setup.sh
    ```

3. Clone the individual microservice repositories and the basic project structure by the following command:

    ```sh
    ./setup.sh
    ```

4. Install dependencies for each microservice:

    ```sh
    cd users
    npm install
    cd ../bots
    npm install
    ```

5. Set up environment variables for each microservice by creating a `.env` file in the root directory of each microservice, there is a `.env.example` for each microservice with the necessary environment vars.

## Usage

1. Start Skaffold:

    ```sh
    skaffold dev
    ```

    This command will build and deploy the `bootree-users` and `bootree-bots` microservices to your local Kubernetes cluster and watch for changes.

## Project Structure

- [infra](http://_vscodecontentref_/0): Contains Kubernetes manifests for deploying the microservices.
- [users](http://_vscodecontentref_/1): Contains the `bootree-users` microservice.
- [bots](http://_vscodecontentref_/2): Contains the `bootree-bots` microservice.
- [skaffold.yaml](http://_vscodecontentref_/3): Skaffold configuration file.

## API Endpoints

### bootree-users

There is swagger documentation for users microservice [here](http://bootree.test/api/users/api-docs).

### bootree-bots

There is swagger documentation for bots microservice [here](http://bootree.test/api/bot/api-docs)
