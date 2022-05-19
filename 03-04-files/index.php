<?php
	function pretty_print( $output ) {
		echo '<pre>';
		print_r( $output );
		echo '</pre>';
	}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Connecting to ODBC  | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<?php
				// Microsoft Excel
				$file = 'speakers.xlsx';
				$dir = dirname($file);
				$odbc = odbc_connect("Driver={Microsoft Excel Driver (*.xls)};DriverId=790;Dbq=$file;DefaultDir=$dir" , '', '');

				$rows = odbc_exec($odbc, "SELECT * FROM Sheet");
				pretty_print( $rows );
			?>
		</main>
		<style>
			body {
				background: #edf2f8;
				font-family: 'Inter', sans-serf;
				font-size: 18px;
			}

			main {
				background: #FFFFFF;
				padding: 40px;
				margin: 0 auto;
				width: 800px;
			}

			article {
				border: 1px solid #CFCFCF;
				box-shadow: 0 0 5px rgba(0,0,0,0.25);
				padding: 15px;
				margin: 15px auto;
				max-width: 90%;
			}

			div.label {
				font-size: 0.9rem;
				background: #000077;
				padding: 3px 6px;
				border-radius: 10px;
				color: #FFFFFF;
				font-weight: bold;
			}
    </body>
</html>