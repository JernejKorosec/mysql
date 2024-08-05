# Batch Scripts for MySQL Initialization and Configuration

## Batch Script 1: MySQL Initialization and Configuration (init_mysql.bat)

### Purpose

This batch script is designed to:
1. **Initialize a New MySQL Database**: It removes any existing MySQL data directory to ensure a clean slate and then initializes the MySQL database with no root password.
2. **Configure the Root Password**: After initializing the database, it sets a new password for the MySQL root user as provided in the script arguments.
3. **Manage MySQL Server Process**: The script starts the MySQL server, waits to ensure it is up and running, and then terminates the server process to complete the setup.

### Workflow
- **Remove Existing Data**: Deletes the current MySQL data directory.
- **Initialize Database**: Sets up a new MySQL database with no password.
- **Start Server**: Launches the MySQL server in a new console.
- **Set Password**: Configures the root user with the specified new password.
- **Terminate Process**: Stops the MySQL server process after configuration.

## Batch Script 2: MySQL Server Management (setmysql.bat)

### Purpose

This script focuses on managing the MySQL server process directly, ensuring that it can be properly terminated after configuration or other operations.

### Workflow
- **Setting MySQL server main folder**
- **Setting password you wish to set**
