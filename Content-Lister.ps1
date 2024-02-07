# Specify the folder path you want to list the contents of
$folderPath = "C:\Users\user\input_folder"

# Get the list of items (files and folders) in the specified folder
$folderContents = Get-ChildItem -Path $folderPath

# Specify the path for the output .txt file
$outputFile = "C:\Users\user\output\folder_contents.txt"

# Create an array to store the names of the items
$itemNames = @()

# Iterate through the items and add their names to the array
foreach ($item in $folderContents) {
    $itemType = if ($item.PSIsContainer) { "Folder" } else { "File" }
    $itemName = "${itemType}: $($item.Name)"
    $itemNames += $itemName
}

# Write the item names to the .txt file
$itemNames | Out-File -FilePath $outputFile

Write-Host "Contents of '$folderPath' listed and saved in '$outputFile'"
