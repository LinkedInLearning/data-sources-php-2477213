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
				
				$mysqli = new mysqli(
				$db_host,
				$db_user,
				$db_password,
				$db_db
				);

				$results = $mysqli->query('SELECT * FROM speakers;');

				$format = '<article>
					<h2>%1$s</h2>
					<p>%2$s</p>
					<h3>%3$s</h3>
					<p>%4$s</p>
					<div class="label">%5$s</div>
				</article>';
				foreach ($results as $row) {
					extract( $row );
					printf( $format, 
						$Name,
						$Biography_short_paragraph,
						$Session_Name,
						$Description_of_Session_short_paragraph,
						$Category_Track
					);
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