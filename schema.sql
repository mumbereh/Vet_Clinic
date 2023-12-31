/* Database schema to keep the structure of entire database. */
update_clinic
CREATE DATABASE vet_clinic;
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(10, 2)
);
ALTER TABLE Animals
ADD COLUMN species VARCHAR(255);
CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(255),
    age integer
);

CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(255)
);

ALTER TABLE animals
    ADD COLUMN species_id integer REFERENCES species(id),
    ADD COLUMN owner_id integer REFERENCES owners(id);

 ALTER TABLE animals DROP COLUMN species;

