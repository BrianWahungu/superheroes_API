## Heroes API

This is an API for managing superheroes and their powers.

## Table of Contents
# Installation
# Usage
# Endpoints
# Models
# Contributing
# License

## Installation
To install this API, follow these steps:

1. Clone this repository to your local machine:
$ git clone git@github.com:BrianWahungu/superheroes_API.git
2. Install the required dependencies:
 $cd superheroes_API
 $bundle install
 $rails db:migrate
 $rails db:seed
3. Start the server:
 $rails server

## Usage
The API is now running and can be accessed at http://localhost:3000. You can use a tool like Postman to test the endpoints.

## Endpoints
The following endpoints are available:

## GET /heroes
Returns a list of all heroes in the database in JSON format.

## GET /heroes/:id
Returns a single hero with the specified ID in JSON format.

## GET /powers
Returns a list of all powers in the database in JSON format.

## GET /powers/:id
Returns a single power with the specified ID in JSON format.

##  PATCH /powers/:id

##  POST /hero_powers

## Models
The following models are used in the API:

## Hero
name: The name of the hero.
super_name: The superhero name of the hero.
created_at: The date the hero was created.
updated_at: The date the hero was last updated.

## Power
name: The name of the power.
description: A description of the power.
created_at: The date the power was created.
updated_at: The date the power was last updated.

## HeroPower
hero_id: The ID of the hero.
power_id: The ID of the power.
strength: The strength of the hero's power.

## Contributing
Contributions to this project are welcome. To contribute, follow these steps:

Fork this repository to your own

## License
 # Apache 2.0 


