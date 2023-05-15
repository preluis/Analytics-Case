# Analytics-Case
 
Considering the information on tables in the "data" folfer, there is the need to get all the account's monthly balances between Jan/2020 and Dec/2020.
The SQL engine used was SQLite and SQLite studio as DMS.
For Python resolution it was used JupyterLab with Anaconda Navigator.
 
 
## System Requirements

- Python (version 3.10.9)
- SQLite3 library (version 2.6.0)
- Pandas library (version 1.5.3)

## Project Structure

- /data: Folder containing the database files.
- /diagram: Folder with a slice of the table structure from the Data Warehouse Environment (diagram/table_diagram.png) and the code used to generate these diagrams on file (diagram/table_diagram.txt).
- /instructions: Deeper information about the analytics case.
- /scripts: Folder containing SQL and Python scripts.
- README.md: Current file containing information about the project.

## Installation

1. Clone the repository from GitHub:
https://github.com/preluis/Analytics-Case.git
2. Install the required dependencies:
pip install sqlite3
pip install pandas

3. Configure the database:

- Copy the database files to the /data folder.

## Usage

1. Open the "script.sql" file in SQLite Studio and execute the script to create the tables in the database.

2. Open Jupyter Lab from Anaconda Navigator.

3. Run the "script.py" file in Jupyter Lab to obtain the results.

## Examples

Here, you can provide examples of input and output, screenshots, or links to live demonstrations.

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




