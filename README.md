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

5. **Stop the Services**:
   To stop and remove containers, networks, and volumes, run:
   ```bash
   docker-compose down -v
   ```

## Environment Variables

The following environment variables are used in the project:

- **PostgreSQL**:
  - `POSTGRES_USER`: Username for the database (default: `postgres`).
  - `POSTGRES_PASSWORD`: Password for the database (default: `postgres`).
  - `POSTGRES_DB`: Name of the database (default: `ecommercedb`).

- **Extractor**:
  - `DB_HOST`: Hostname of the database (default: `postgres`).
  - `DB_NAME`: Name of the database (default: `ecommercedb`).
  - `DB_USER`: Username for the database (default: `postgres`).
  - `DB_PASS`: Password for the database (default: `postgres`).
  - `DB_PORT`: Port of the database (default: `5432`).

## Troubleshooting

- **pgAdmin Cannot Connect to PostgreSQL**:
  Ensure you are using `postgres` as the host when adding the server in pgAdmin.

- **`init.sql` Not Executing**:
  Verify that `init.sql` exists in the project root and is correctly mapped in `docker-compose.yml`.


