<!DOCTYPE html>
<html>
    <head>
        <title>Reading from Files | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<?php echo file_get_contents( 'file.txt' ); ?>
			<hr/>
			<?php
				foreach ( file('file.txt') as $line => $text ) {
					if ( strlen( trim($text) ) > 0 ) echo "<p>#$line: $text</p>";
				}
			?>
			<hr/>
			<?php
				$fp = fopen( 'file.txt', 'r' );
				if ($fp) {
					while (($buffer = fgets($fp)) !== false) {
						echo "<p>$buffer</p>";
					}
					fclose($fp);
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
    </body>
</html>