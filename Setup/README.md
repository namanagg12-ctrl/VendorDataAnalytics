# Project Setup

This section explains the setup of the workspace for this data analysis project.

I am using a **MySQL Server** hosted locally on my laptop via **Docker**. The six CSV files provided for the database have been imported into a database named `vendor_db`.

The project folder contains **two Python scripts**:

- **`IngestTables.ipynb`**  
  Ingests all tables into the database. This can be rerun whenever the database needs to be updated.

- **`IngestSales.ipynb`**  
  Specifically ingests the sales table in chunks to manage resource constraints when handling large datasets.