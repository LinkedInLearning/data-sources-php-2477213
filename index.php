<!DOCTYPE html>
<html>
    <head>
        <title>Reading from Files | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<h1>Reading from Files</h1>
			<?php 
				//echo file_get_contents('02_01.txt'); 
				
				foreach( file('02_01.txt') as $line => $text )	{
					if( strlen( trim($text) ) > 0 ) {
						echo "<p>#$line: $text</p>";
					}
				}
			?>
			<hr/>
			<?php
				$fp = fopen( '02_01.txt', 'r' );
				if ( $fp ) {
					while( ($buffer = fgets($fp)) !== false ) {
						echo "<p>$buffer</p>";
					}
				}
				fclose($fp);
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
		</style>
    </body>
</html>