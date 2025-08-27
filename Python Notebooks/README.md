# Python Notebooks

This folder contains Jupyter notebooks used for analyzing vendor data as part of the Vendor Data Analytics project. The notebooks primarily leverage Python for data analysis, visualization, and insights extraction. While SQL queries were used in parallel to retrieve and preprocess data, the main analytical work and visualizations are performed within these Python notebooks.

The notebooks connect to the MySQL database created via the setup scripts, allowing seamless data access and analysis.

## Notebooks

### exploratorydataanalysis.ipynb
This notebook provides a high-level exploration of the dataset, focusing on identifying trends, distributions, and general patterns in the vendor data. It serves as the starting point for understanding the overall data landscape.

### vendorperformanceanalysis.ipynb
This notebook offers an in-depth analysis at the vendor level, examining performance metrics, profitability, and inventory details. It dives deeper into vendor-specific insights to help evaluate and optimize vendor relationships.

## How to Open and Run the Notebooks

1. Ensure you have Python and Jupyter Notebook installed. You can install Jupyter via pip if needed:
   ```
   pip install notebook
   ```
2. Make sure the MySQL database is set up and running as per the setup scripts provided in the project.
3. Launch Jupyter Notebook from the command line within this directory:
   ```
   jupyter notebook
   ```
4. Open the desired notebook (`exploratorydataanalysis.ipynb` or `vendorperformanceanalysis.ipynb`) from the Jupyter interface.
5. Run the notebook cells sequentially to perform the analysis. The notebooks include code to connect to the MySQL database and retrieve data automatically.
