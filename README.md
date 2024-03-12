# FivePD Access Control for QBCore

This FiveM script enhances roleplay servers by integrating QBCore job roles with FivePD, offering role-based access control to FivePD functionalities. It's designed specifically for servers using the QBCore framework, ensuring that only authorized roles such as police, admin, and god have access to certain FivePD commands.

## Features

- **Role-Based Access Control**: Restricts access to FivePD functionalities based on user roles (police, admin, god).
- **Command Cooldown**: Prevents spamming of the FivePD command with a customizable cooldown timer.
- **Easy Configuration**: Simple setup and configuration through `server.lua`.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- FiveM server setup and running.
- [QBX Framework](https://github.com/Qbox-project/) installed and configured.
- [FivePD Mod](https://gtapolicemods.com/index.php?/files/file/818-fivepd/) installed on your server.

## Installation

1. Download the latest release from the GitHub repository.
2. Extract the ZIP file into your `resources/[qb]` directory.
3. Add `ensure fivepd_access_QB` to your server's `server.cfg` file.
4. Restart your server or start the resource manually via the console.

## Configuration

Edit the `server.lua` file to adjust the roles that have access to the FivePD functionalities and to modify the cooldown timer for the command usage.

## Usage

Authorized players can access the FivePD functionalities in-game by using the command `/fivepd`. The command is restricted to roles defined in the `server.lua` file.

## Contributing

Contributions to the project are welcome. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## Acknowledgments

- [QBCore Framework](https://github.com/qbcore-framework)
- [FivePD Mod](https://gtapolicemods.com/index.php?/files/file/818-fivepd/)


