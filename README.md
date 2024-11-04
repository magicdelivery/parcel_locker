# Magic delivery: the 'Parcel Locker' microservice

## Intro

This microservice is part of a small project for learning microservices development. 

## Install and run

Before setting up the project, you need to have a Docker infrastructure installed to run the containers, as well as the `make` utility.
First, start the 'Parcel Locker' microservice.

```sh
mkdir magicdelivery && cd magicdelivery
git clone https://github.com/magicdelivery/parcel_locker.git
cd parcel_locker
make up
```

## Details

The application is written in Rust. The code structure follows a separation into application, infrastructure, and domain logic layers.

The [warp](https://docs.rs/warp/latest/warp/) framework is used to serve the RESTful API.

Data storage is managed by a [Redis](https://redis.io/) server.

There are some unit tests for the application logic, as well as E2E testing of the API using the hurl utility.

The GitHub verification workflow automatically runs unit tests, checks code formatting, and uses Clippy for linting to ensure code quality.  

## GitHub Actions

The repository includes GitHub Actions pipeline that installs the stable Rust toolchain, caches dependencies, runs unit tests, checks formatting, and enforces linting rules.

## Contribution

Since this is a learning project focused on microservices with Rust, I would be incredibly grateful for any advice or ideas for improvement!

## Licence

MIT
