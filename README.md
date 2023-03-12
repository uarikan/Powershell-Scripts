
<body>
	<h1>Handy Powershell Scripts</h1>
	<h2>csv_to_mssql_table.ps1</h2>
	<p>This PowerShell script merges CSV files with the same header, moves the merged file to an archive folder, and bulk copies the data to a SQL server.</p>
	<ul>
		<li>Merge all CSV outputs with the same header</li>
		<li>Move used CSV files to Archive folder</li>
		<li>Bulk copy to SQL server</li>
	</ul>
</body>

<body>
	<h2>docx_to_pdf.ps1</h2>
	<p>This PowerShell script allows you to convert all text files in a specified directory and its subdirectories to PDF files using Microsoft Word.</p>
	<ul>
		<li>Microsoft Word must be installed on your computer.</li>
		<li>Modify the $folder parameter to specify the path of the directory containing the text files you want to convert to PDF</li>
		<li>The PDF files will be saved in the same directory as the text files, with the same name as the text file but with a .pdf extension.</li>
	</ul>
</body>

<body>
	<h2>excel_to_pdf.ps1</h2>
	<p>This PowerShell script updates data in Excel files and then creates a PDF file for each Excel file.</p>
	<ul>
		<li>This script requires the Microsoft.Office.Interop.Excel assembly to be installed.</li>
		<li>Update the $path and $savepath variables to the appropriate file paths.</li>
		<li>Exports the Excel file as a PDF file and saves it to the designated directory.</li>
	</ul>
</body>

<body>
	<h2>file_finder.ps1</h2>
	<p>This script finds files from a source folder and moves to a destination folder, based on a list of file names. It then checks the file size of the copied files, and moves them to a final destination folder if they are less than x KB in size.</p>
	<ul>
		<li>The $file_list variable is set to the path of the CSV file containing the list of file names to be searched.</li>
		<li>The script then checks the size of the copied files in the $destination folder. If a file is less than 2000KB in size, it is moved to the final destination folder.</li>
	</ul>
</body>


<body>
	<h2>file_reverse.ps1</h2>
	<p>This PowerShell script takes a directory and file extension as input from the user, reverses the content of all the files with that extension in the directory, and saves them as a new file with the same name and ".rev" added to the filename.</p>
	<ul>
		<li>Run the script by typing .\Reverse-Content.ps1 and hitting Enter.</li>
		<li>When prompted, enter the directory containing the files you want to reverse and the file extension you want to process.</li>
	</ul>
</body>

<body>
	<h2>print_pdf.ps1</h2>
	<p>This PowerShell script prints a PDF file using the default printer. It can be useful for automating printing tasks, such as printing reports or invoices.</p>
	<ul>
		<li>This script sets the default printer to the system's default printer, prints the PDF file using that printer, and then restores the original default printer.</li>
	</ul>
</body>


<body>
	<h2>split_csv_by_column.ps1</h2>
	<p>This PowerShell script reads a CSV file, groups the data based on a specified column, and saves the groups as separate CSV files. The user is prompted to enter the path to the folder containing the CSV file, the name of the CSV file, and the column to group by./p>
	<ul>
		<li>This script can be useful for quickly grouping and analyzing data in CSV files.</li>
		<li>This script can also be executed by a task scheduler to automate the grouping process and save time.</li>
	</ul>
</body>
