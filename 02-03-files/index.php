<?php
  function pretty_print( $output ) {
    echo '<pre>';
    var_dump( $output );
    echo '</pre>';
  }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Reading from Protected API | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<?php
			$api_key = 'f5d36126-807a-4f25-88af-bf5b029fe1b4';
			$api_callback = 'https://dictionaryapi.com/api/v3/references/collegiate/json/test?key=';
			$xkcd = json_decode( file_get_contents('https://xkcd.com/info.0.json') );
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