
# Query Weave Insights Project

## Description

The Query Weave Insights Project aims to design and develop a robust database application for managing and analyzing data for sports club management. The project includes SQL and NoSQL implementations, as well as a Python application for database access and data visualization. The primary objective is to streamline the process of managing player information, schedules, medical records, and sponsorships, thereby reducing data duplication and ensuring data integrity.

## Technologies

- **Database**: SQL (MySQL) and NoSQL (MongoDB)
- **Programming Language**: Python
- **Tools**: Jupyter Notebook, MySQL Workbench, MongoDB Playground

## Details About Use

### Database Creation

To set up the database:

1. **MySQL Implementation**:
    - Install MySQL and MySQL Workbench.
    - Open MySQL Workbench and connect to your database server.
    - Execute the `Query_Weave_Insights_project_mysql_queries.sql` and `Query_Weave_Insights_Simple_queries.sql` scripts to create the database schema and insert data.

2. **NoSQL Implementation**:
    - Install MongoDB.
    - Use MongoDB Playground or MongoDB Compass to connect to your MongoDB server.
    - Execute the queries in `Query_Weave_Insights_project_nosql_queries.js` to create collections and insert data.

### Python Application

To run the Python application:

1. Ensure you have Python installed on your system.
2. Install the required libraries: `mysql-connector-python`, `pandas`, and `matplotlib`.
3. Open the Jupyter Notebook file `Query_Weave_Insights_Database_application_in_python.ipynb` and run the cells to access the database and visualize the data.
4. Use the following link to open in Google Colab: <a target="_blank" href="https://colab.research.google.com/github/veerabhmahadik/SQL/tree/master/Query%20Weave%20Insights">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

## Dependencies

- **SQL database management system**: MySQL
- **NoSQL database**: MongoDB
- **Python libraries**: `mysql-connector-python`, `pandas`, `matplotlib`
- **Jupyter Notebook**

### Issue or Limitations of the Project

- The project assumes a specific database schema, which might require adjustments for different use cases.
- Data cleaning and preprocessing are necessary before inserting data into the database.

### Future Features

- Integration with a web interface for easier interaction with the database.
- Advanced analytics and machine learning models to provide deeper insights.
- Enhanced data validation and error handling mechanisms.

## Instructions for Installation

1. Install MySQL and MySQL Workbench.
2. Install MongoDB and MongoDB Playground or Compass.
3. Install Python and Jupyter Notebook.
4. Install the required Python libraries using `pip`:
    ```bash
    pip install mysql-connector-python pandas matplotlib
    ```
5. Set up the MySQL and MongoDB databases using the provided SQL and NoSQL scripts.
6. Open and run the Jupyter Notebook file to interact with the database and visualize data.

## Why Did You Choose Your Technology?

- **MySQL**: Chosen for its robust support for relational data and complex queries.
- **MongoDB**: Selected for its flexibility in handling unstructured data and ease of scaling.
- **Python**: Used for its simplicity and powerful data manipulation and visualization libraries
