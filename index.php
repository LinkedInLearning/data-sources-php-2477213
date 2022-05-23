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

				$name = 'Joe Casabona';
				$title = 'Programmer';
				$org = 'LinkedIn Learning';
				$bio = 'Joe has been writing PHP code for over 20 years!';
				$session_name = 'How to Connect to a Database';
				$session_desc = 'In this live coding session you\\\'ll get hands-on experience for connecting to a database with PHP';
				$track = 'Tech';

				$query = "INSERT INTO speakers VALUES(NULL, '$name', '$title', '$org', '$bio', '$session_name', '$session_desc', '$track')";

				if ( $mysqli->query( $query ) === TRUE ) {
					echo '<p>New record added successfully!</p>';
				} else {
					echo '<p>Error: ' . $mysqli->error . '</p>';
				}
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