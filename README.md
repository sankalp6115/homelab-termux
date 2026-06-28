# Termux Setup Scripts

This project contains shell scripts that are used to configure a complete Termux setup automatically. 

## What it does

It takes a fresh Termux installation and turns it into a ready to use environment. It updates the system, requests storage permissions, installs required packages, configures SSH access, creates necessary folders, and applies custom configurations for your shell. By running a single script, you can have a fully working setup without doing everything manually.

## What every file does

The main folder has a bootstrap folder which contains all the scripts and files.

* bootstrap/bootstrap.sh: The main script that runs all the numbered scripts below in the correct order. You only need to run this file.
* bootstrap/01-system.sh: Updates Termux, asks for storage permissions, and checks your system version and internet connection.
* bootstrap/02-packages.sh: Installs basic and required software packages for the system.
* bootstrap/03-ssh.sh: Configures SSH so you can connect to Termux remotely.
* bootstrap/04-directories.sh: Creates the folders needed for the setup.
* bootstrap/05-config.sh: Applies custom settings by copying configuration files to the correct locations.
* bootstrap/06-services.sh: Sets up Termux background services.
* bootstrap/07-apps.sh: Installs extra applications and tools.
* bootstrap/08-opt-packages.sh: Installs optional software packages that might be useful.
* bootstrap/assets/: A folder that stores extra files like audio used during the setup process.
* bootstrap/config/: A folder that holds the configuration files (like .bashrc, .zshrc, and ssh_login.sh) that are copied to your home directory.

## Getting involved

If you want to help improve this project, contributions are very welcome. The code is written in simple bash scripts. Please take some time to read the source code to understand how everything works before making changes or adding new features. Reading the code is the best way to learn how the setup is done.