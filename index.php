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
        <title>Writing to a MySQL Database | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<h1>Writing to a MySQL Database</h1>
			<?php
				$host = 'localhost';
				$user = 'root';
				$pass = 'root';
				$db = 'conference';

				$mysqli = new mysqli( 
					$host,
					$user,
					$pass,
					$db
				);
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
				margin: 20px;
				border: #EFEFEF;
				box-shadow: 0 0 10px rgba(0,0,0,0.25);
				padding: 20px;
			}

			div.label {
				display: inline-block;
				color: #FFFFFF;
				background: #880000;
				padding: 5px;
				border-radius: 10px;
			}
		</style>
    </body>
</html>