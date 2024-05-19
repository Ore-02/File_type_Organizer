# File Organizer Script

## Description
This Bash script, `file_organizer.sh`, is designed to organize files in a specified source directory into different categories such as videos, documents, images, music, and programs.
## Prerequisites
Before running this script, ensure the following prerequisites are met:
1. **Bash Shell**: The script requires a Bash shell environment to execute.
2. **Source Directory**: You should have a source directory containing the files you want to organize.

## How to Use

1. **Download the Script**:
   Save the script content to a file named `file_organizer.sh`.

2. **Make the Script Executable**:
   ```bash
   chmod +x file_organizer.sh
   ```

3. **Run the Script**:
   Execute the script by running:
   ```bash
   ./file_organizer.sh
   ```

4. **Follow the Prompts**:
   - Input the source directory containing the files to organize.
   - Respond to the prompts for each file type to organize (videos, documents, images, music, and programs).
   - Provide destination directories for each selected file type.

## Example

```bash
./file_organizer.sh
```
Output:
```
Input Source Directory: /path/to/source_directory
Organize videos (y/n): y
Input Videos Destination Directory: /path/to/videos_directory
Organize documents (y/n): y
Input Documents Destination Directory: /path/to/documents_directory
Organize images (y/n): n
Organize music (y/n): y
Input Music Destination Directory: /path/to/music_directory
Organize programs (y/n): n
```

## Notes
- Ensure you have appropriate permissions to read from the source directory and write to the destination directories.
- The script moves files from the source directory to the destination directories. Make sure to verify the organization results.

By following these instructions, you can effectively use the `file_organizer.sh` script to organize your files into different categories for better management.
