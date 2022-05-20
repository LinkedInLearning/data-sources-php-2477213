<?php
	function pretty_print( $output ) {
		echo '<pre>';
		print_r( $output );
		echo '</pre>';
	}

	function get_tracks( $mysqli ) {
		$tracks = $mysqli->query( 'SELECT GROUP_CONCAT( DISTINCT Category_Track) FROM speakers AS track' );
		return explode( ',', $tracks->fetch_all()[0][0] );	
	}

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
<!DOCTYPE html>
<html>
    <head>
        <title>Connecting to a MySQL Database | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>

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

			form div {
				margin: 10px;
				display: grid;
    			grid-template-columns: 1fr 2fr;
    			grid-gap: 20px;
    			grid-template-areas: "label input input";
			}

			label {
				grid-area: label;
			}

			input {
				grid-area: input;
				padding: 5px;
				font-size: 18px;
			}

			textarea {
				height: 200px;
			}
    </body>
</html>