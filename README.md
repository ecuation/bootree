# Bootree Skaffold (Kubernetes) Project

Bootree is a personal project which includes a users management/authorization microservice and a bot/assistant microservices with a Twitch API and OpenAI API integration.

Basically is a WIP like "alexa assistant" project to moderate a Twitch channel chat.

This project uses Skaffold to manage the development and deployment of the Bootree microservices, including `bootree-users` and `bootree-bots`.

## Overview

Skaffold is a command-line tool that facilitates continuous development for Kubernetes applications. This project includes configurations for building, syncing, and deploying the `bootree-users` and `bootree-bots` microservices.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Kubernetes](https://kubernetes.io/docs/setup/)
- [Skaffold](https://skaffold.dev/docs/install/)
- [Nginx ingress controller](https://docs.nginx.com/nginx-ingress-controller/installation/installing-nic/)


There is a common NPM package created for these microservices that is included on each package.json. The common organization package contains some shared code necessary to manage Error handling and authorization middlewares.

You can access them by the following if needed [link](https://www.npmjs.com/package/@bootree/common).

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
5. Update hosts file for local Development by adding:

    ```127.0.0.1 bootree.test```

6. Set up environment variables for each microservice by creating an skaffold.env file inside k8s folder and run the following command. Is not necessary to create any .env inside each microservice.

    ```sh
    kubectl create configmap bots-config --from-env-file=skaffold.env
    ```
## Tests

All endpoints has tests for happy paths and unhappy paths, you can run tests by the following command on each microservice. (Do not forget to first install node dependencies).

1. Inside users and bots projects
    ```sh
    npm run test
    ```

## Usage

1. Start Skaffold in the root folder:

    ```sh
    skaffold dev
    ```

    This command will build and deploy the `bootree-users` and `bootree-bots` microservices to your local Kubernetes cluster and watch for changes.

## Project Structure

- [infra](http://_vscodecontentref_/0): Contains Kubernetes manifests for deploying the microservices.
- [users](http://_vscodecontentref_/1): Contains the `bootree-users` microservice.
- [bots](http://_vscodecontentref_/2): Contains the `bootree-bots` microservice.
- [skaffold.yaml](http://_vscodecontentref_/3): Skaffold configuration file.

## API documentation (Swagger)

### bootree-users

There is swagger documentation for users microservice [here](http://bootree.test/api/users/api-docs).

### bootree-bots

There is swagger documentation for bots microservice [here](http://bootree.test/api/bot/api-docs)


## Diagrams

Architecture and API Figma diagrams [here](https://www.figma.com/deck/kClBxJfOraS0cWa2JjpLCS/Building-a-scalable-microservices-architecture-presentation?node-id=1-1053&t=EVK31kJ8Xx8vq604-1)