# Magic delivery: the 'Parcel Locker' microservice

## Intro

This microservice is part of a small project for learning microservices development. 

## Install and run

Before setting up the project, you need to have a Docker infrastructure installed to run the containers, as well as the `make` utility.
First, start the 'Parcel Locker' microservice.

```sh
cd parcel_locker
make up
```

## Details

The application is written in Rust. The code structure follows a separation into application, infrastructure, and domain logic layers.

The [warp](https://docs.rs/warp/latest/warp/) framework is used to serve the RESTful API.

Data storage is managed by a [Redis](https://redis.io/) server.

There are some unit tests for the application logic, as well as E2E testing of the API using the hurl utility.

