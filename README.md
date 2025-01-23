# remove_mysql_ubuntu

Script to remove MySQL from Ubuntu.

## What the script does

1. Stops the MySQL service.
2. Uninstalls MySQL packages.
3. Removes unused packages and dependencies.
4. Deletes MySQL configuration files and directories.
5. Searches for and removes residual MySQL files.
6. Updates the package list.
7. Checks if MySQL has been completely removed.

## How to use

1. Clone the repository or download the script.
2. Make the script executable:
    ```bash
    chmod +x remove_mysql.sh
    ```
3. Run the script with superuser privileges:
    ```bash
    sudo ./remove_mysql.sh
    ```

## Note

- Ensure you have backed up any important data before running the script, as it will permanently delete MySQL and its related files.
- The script is intended for use on Ubuntu systems.
