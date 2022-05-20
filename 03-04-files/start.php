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
        <title>Connecting to a MySQL Database | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
		<?php
			$db_host = 'localhost';
			$db_user = 'root';
			$db_password = 'root';
			$db_db = 'conference';
			
			$mysqli = @new mysqli(
				$db_host,
				$db_user,
				$db_password,
				$db_db
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
    </body>
</html>