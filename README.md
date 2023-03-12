<!DOCTYPE html>
<html>
<head>
	<title>Powershell-Scripts</title>
	<style>
		body {
			font-family: Arial, sans-serif;
		}
		h1 {
			font-size: 2.5rem;
			text-align: center;
			color: #333;
		}
		h2 {
			font-size: 2rem;
			color: #333;
		}
		p {
			font-size: 1.2rem;
			color: #555;
		}
		ul {
			list-style: none;
			padding: 0;
			margin: 0;
		}
		li {
			font-size: 1.2rem;
			color: #555;
			margin-bottom: 10px;
			margin-left: 20px;
			position: relative;
		}
		li:before {
			content: "\2022";
			color: #333;
			font-weight: bold;
			display: inline-block;
			width: 1em;
			margin-left: -1em;
			position: absolute;
			left: 0;
		}
	</style>
</head>
<body>
	<h1>Powershell-Scripts</h1>
	<h2>csv_to_mssql_table.ps1</h2>
	<p>This PowerShell script merges CSV files with the same header, moves the merged file to an archive folder, and bulk copies the data to a SQL server.</p>
	<ul>
		<li>Merge all CSV outputs with the same header</li>
		<li>Move used CSV files to Archive folder</li>
		<li>Bulk copy to SQL server</li>
	</ul>
</body>
</html>
