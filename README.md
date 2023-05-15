# Analytics-Case
 
Considering the information on tables in the "data" folfer, there is the need to get all the account's monthly balances between Jan/2020 and Dec/2020.
The SQL engine used was SQLite and SQLite studio as DMS.
For Python resolution it was used JupyterLab with Anaconda Navigator.
  
## System Requirements

- Python (version 3.10.9)
- SQLite3 library (version 2.6.0)
- Pandas library (version 1.5.3)

## Environment Setup

This project utilizes the following tools and technologies:

- SQLite: A relational database for storing and querying data.
- SQLite Studio: A graphical client for managing and visualizing SQLite databases.
- Jupyter Lab (Anaconda Navigator): An interactive development environment used for running Python code and SQL queries.

Make sure you have these tools installed on your system before running the code.

## Setup Instructions

1. SQLite Installation: (https://sqlite.org/download.html)
2. SQLite Studio Installation: (https://sqlitestudio.pl/) 
3. Jupyter Lab (Anaconda Navigator) Installation: (https://www.anaconda.com/download).

## Project Structure

- /data: Folder containing the database files.
- /diagram: Folder with a slice of the table structure from the Data Warehouse Environment (diagram/table_diagram.png) and the code used to generate these diagrams on file (diagram/table_diagram.txt).
- /instructions: Deeper information about the analytics case.
- /scripts: Folder containing SQL and Python scripts.
- README.md: Current file containing information about the project.

## Usage

1. Clone the repository from GitHub: https://github.com/preluis/Analytics-Case.git
2. Open SQLite Studio load the existing database "db".
3. Execute the provided SQL script in the database to create the tables and load the initial data.
4. Open Jupyter Lab and navigate to the project directory.
5. Run the Python file to perform data queries and analysis.

## Additional Notes

- Ensure that the database connection in the Python code is properly configured to reflect your environment and database location.
- If you encounter any issues during setup or execution of the project, feel free to contact me for further assistance.

## Contribution

If you wish to contribute to the project, follow these steps:

1. Fork the repository.

2. Create a new branch for your contribution:

git checkout -b feature/new-feature

3. Make your changes and commit them with descriptive messages:

git commit -m "Add new feature"

4. Push your branch to the remote repository:

git push origin feature/new-feature

5. Open a pull request on GitHub and describe your changes in detail.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.




