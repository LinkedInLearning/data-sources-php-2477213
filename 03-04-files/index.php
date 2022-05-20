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
        <title>Connecting to a MySQL Database  | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<h1>Conference Speakers</h1>
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

			
				$query = "INSERT INTO speakers VALUES (NULL, 'Joe Casabona', 'Programmer', 'Good House Media, LLC', 'Joe started his career almost 20 years ago as a freelance web developer before realizing his true passion, which is sharing his years of knowledge about website development, podcasting and course creator to help creators, freelancers, and business owners.', 'How to Connect to a Database', 'Get live coding experience in this session, where you\'ll learn how to use PHP to connect to a live database!', 'Tech')";

				if ($mysqli->query( $query ) === TRUE) {
					echo "New record created successfully";
				} else {
					echo "Error: " . $mysqli->error;
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