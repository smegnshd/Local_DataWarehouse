## Introduction
demonstrate how to schedule dbt models through Airflow.

# Requirements
 * Install Docker
 * Install Docker Compose
# Setup
 * Clone the repository
 * Extract the CSV files within ./sample_data directory (files are needed as seed data)
 Change directory within the repository and run docker-compose up. This will perform the following:

Based on the definition of docker-compose.yml will download the necessary images to run the project. This includes the following services:
* airflow-mysql: DB for Airflow to connect and store task execution information
* dbt-mysql: DB for the DBT seed data and SQL models to be stored
* airflow: Python-based image to execute Airflow scheduler and webserver
* adminer: a lightweight DB client
# Docker Compose Commands
* Enable the services: docker-compose up or docker-compose up -d (detatches the terminal from the services' log)
* Disable the services: docker-compose down Non-destructive operation.
* Delete the services: docker-compose rm Ddeletes all associated data. The database will be empty on next run.
* Re-build the services: docker-compose build Re-builds the containers based on the docker-compose.yml definition. Since only the Airflow service is based on local files, this is the only image that is re-build (useful if you apply changes on the ./airflow/init.sh file.
# dbt commands
* dbt run
* dbt test
