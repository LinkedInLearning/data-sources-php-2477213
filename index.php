<?php
	function pretty_print( $output ) {
		echo '<pre>';
		print_r( $output );
		echo '</pre>';
	}

	function add_session( $mysqli, $info ) {
		extract( $info );
		$bio = htmlentities( $bio, ENT_QUOTES );
		$session_desc = htmlentities( $session_desc, ENT_QUOTES );
		$track = ( is_null( $track ) ) ? 'Tech' : $track;

		$query = "INSERT INTO speakers VALUES(NULL, '$name', '$title', '$org', '$bio', '$session_name', '$session_desc', '$track');";

		if( $mysqli->query( $query )  === TRUE ) {
			echo '<p>New record added successfully!</p>';
		} else {
			echo '<p>Error: '. $mysqli->error . '</p>';
		}
	}

	/** Returned an indexed array of all the tracks from the database */
	function get_tracks( $mysqli ) {
		$tracks = $mysqli->query( 'SELECT GROUP_CONCAT( DISTINCT track) FROM speakers AS track' );
		return explode( ',', $tracks->fetch_all()[0][0] );	
	}

	/*** REPLACE WITH YOUR CONNECTION INFORMATION ***/
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
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Challenge: Submitting to a MySQL Database | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
		<h1>Add Record to Database</h1>
			<?php
				if( isset( $_POST['submit'] ) ) {
					add_session( $mysqli, $_POST ); 
				}
			?>
			<form name="new-speaker" method="POST">
				<div>
					<label for="name">Name:</label>
					<input type="text" name="name" />
				</div>
				<div>
					<label for="title">Title:</label>
					<input type="text" name="title" />
				</div>
				<div>
					<label for="org">Organization:</label>
					<input type="text" name="org" />
				</div>
				<div>
					<label for="bio">Bio:</label>
					<textarea name="bio"></textarea>
				</div>
				<div>
					<label for="session_name">Session Name:</label>
					<input type="text" name="session_name" />
				</div>
				<div>
					<label for="session_desc">Description:</label>
					<textarea name="session_desc"></textarea>
				</div>
				<div>
					<label for="track">Track:</label>
					<select name="track">
						<option value="null">Select a Track</option>
						<?php 
							$tracks = get_tracks( $mysqli );
							foreach( $tracks as $track ) {
								echo '<option value="'. $track .'">' . $track .'</option>';
							}
						?>
					</select>
				</div>
				<div class="submit">
						<input type="submit" name="submit" value="Submit Your Session!" />
				</div>
			</form>
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
		</style>
    </body>
</html>