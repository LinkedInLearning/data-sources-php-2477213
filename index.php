<?php
	function print_dir() {
		$path    = './';
		$files = scandir($path);
		$files = array_diff(scandir($path), array('.', '..'));
		foreach($files as $file){
			if ( is_dir( $file ) && substr( $file, 0, 1) !== '.' ) {
				echo "<li><a href='$file'>$file</a></li>";
			}
		}
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<ul>
				<?php print_dir(); ?>
			</ul>
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