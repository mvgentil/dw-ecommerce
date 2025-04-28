# DW E-commerce Project

This project is a data warehouse setup for an e-commerce platform. It uses Docker Compose to orchestrate services like PostgreSQL, pgAdmin, and a custom data extractor from the Fake Store API (https://fakestoreapi.com/).

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## How to Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/mvgentil/dw-ecommerce.git
   cd dw-ecommerce
   ```

2. **Ensure Required Files Exist**:
   - Verify that `init.sql` exists in the project root directory and contains valid SQL commands.

3. **Start the Services**:
   Run the following command to start all services:
   ```bash
   docker-compose up --build
   ```

4. **Access Services**:
   - **PostgreSQL**: Accessible on `localhost:55432` (default credentials are in `docker-compose.yml`).
   - **pgAdmin**: Open your browser and go to [http://localhost:5050](http://localhost:5050). Use the following credentials:
     - Email: `admin@admin.com`
     - Password: `admin`

     - Connect to a new server:
       - Name: `postgres`
       - Host: `postgres`
       - Port: `5432`
       - User: `postgres`	
       - Password: `postgres`

5. **Run dbt tranformations**:
   You may run `dbt run` in the project root directory (make sure you have dbt installed) or run inside the docker container:
   ```bash
   docker exec -it fake_store_dbt dbt run
   ```


6. **Stop the Services**:
   To stop and remove containers, networks, and volumes, run:
   ```bash
   docker-compose down -v
   ```

## Environment Variables

The following environment variables are used in the project:

- **PostgreSQL**:
  - `DB_HOST`: Hostname of the database (default: `postgres`).
  - `DB_NAME`: Name of the database (default: `fake_store`).
  - `DB_USER`: Username for the database (default: `postgres`).
  - `DB_PASS`: Password for the database (default: `postgres`).
  - `DB_PORT`: Port of the database (default: `5432`).

- **pgAdmin**:
  - `PGADMIN_DEFAULT_EMAIL`: Default email for pgAdmin (default: `admin@admin.com`).
  - `PGADMIN_DEFAULT_PASSWORD`: Default password for pgAdmin (default: `admin`).

- **AWS Credentials**:
  - `AWS_ACCESS_KEY_ID`: AWS access key ID.
  - `AWS_SECRET_ACCESS_KEY`: AWS secret access key.
  - `BUCKET_NAME`: Name of the S3 bucket (for example: `fake-store-bucket-raw`).

## Troubleshooting

- **pgAdmin Cannot Connect to PostgreSQL**:
  Ensure you are using `postgres` as the host when adding the server in pgAdmin.

- **`init.sql` Not Executing**:
  Verify that `init.sql` exists in the project root and is correctly mapped in `docker-compose.yml`.


