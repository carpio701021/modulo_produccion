# Modulo Produccion

This project is to calculate costs of production and manufacture, and control the flow of the process as well.

## Modules

### Create model
Creation a registering of the materials needed to manufacture the product

### Upload materials costs
Calculation of total cost of the product depending of the updated costs of materials

### Manufacture flow
Creation of flow and steps of the manufacture process, creating codes and validating each step.



## Installing the Project
Just run the command on root path:

```sh
bundle
```

## History of commands used

```sh
rails g scaffold LecturaContador Direccion:text NumeroDeContador:string Lectura:integer

```

## Rails commands

```sh
# Create project
rails new PROJECT_NAME
# Install dependencies
bundle install
bundle

# Run project
rails server
rails s

# Migrate database
rails db:drop db:create db:migrate

# Ruby console
```sh
irb
```

# Rails console
```sh
rails console
```

# Generator
rails generate GENERATOR name_or_parameters
rails g GENERATOR name_or_parameters

# Destroy generated stuff
rails destroy GENERATOR name_or_parameters
rails d GENERATOR name_or_parameters

# Generate model
rails g model MODEL_NAME_SINGULAR ATTRIBUTES
rails g model image description:string likes_counter:integer

# Generate controller
rails g controller CONTROLLER_NAME

# Generate scaffold (model, view and controller)
rails generate scaffold t
rails g GENERATOR name_or_parameters

# Example of scaffold:
rails generate scaffolding tinyurl original_url:string tiny_url:string expiration:datetime

```

## Rails convetions

* Models and Classes: Singular with CamelCase.
* Tables: Plural with underscores.
* Schemas:
  * Primary keys: "id"
  * Foreign keys: singularized_table_name_id
  * created_at
  * updated_at

## Gems useful
- carrierwave: to upload files
- mini_magick: to minimaze images

```sh
rails g uploader NAME_OF_UPLOADER
```
- devise: for authentication and users management
