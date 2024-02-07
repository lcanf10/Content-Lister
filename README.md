# Content-Lister

PowerShell Script for Listing Folder Contents

This PowerShell script provides a straightforward method for listing the contents of a specified folder, including both files and folders, and then saving this list to a .txt file. It's designed to be both simple to use and easy to integrate into larger workflows, making it a valuable tool for system administrators, developers, or anyone needing to document the contents of a directory.
Features

    Lists all files and folders within a specified directory.
    Distinguishes between files and folders in the output.
    Saves the list to a specified .txt file for documentation or further processing.

Prerequisites

    PowerShell 5.1 or newer.

Usage

    Open PowerShell.
    Navigate to the directory containing the script.
    Execute the script with the following command: .\ListFolderContents.ps1
        Note: Replace ListFolderContents.ps1 with the actual name of the script if you have renamed it.

Customizing the Script

To use this script for your specific needs, you'll need to modify the $folderPath and $outputFile variables at the beginning of the script.

    $folderPath specifies the directory whose contents you want to list.
    $outputFile specifies the path to the .txt file where the list will be saved.

Example

To list the contents of C:\Users\user\input_folder and save the output to C:\Users\user\output\folder_contents.txt, set the variables like so:

powershell

$folderPath = "C:\Users\user\input_folder"
$outputFile = "C:\Users\user\output\folder_contents.txt"

Script Breakdown

The script operates in a few simple steps:

    It reads the contents of the specified folder.
    It iterates through these contents, identifying each item as either a file or a folder.
    It compiles a list of these items, prefixing each with its type (File or Folder).
    It writes this list to the specified output file.

Contributing

Contributions are welcome. If you have suggestions for improving this script, please open an issue or pull request on GitHub.
