<?php
  function pretty_print( $output ) {
    echo '<pre>';
    print_r( $output );
    echo '</pre>';
  }

  $api_key = 'f5d36126-807a-4f25-88af-bf5b029fe1b4'; // CHANGE TO YOUR API KEY
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Reading from Protected API | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<h1>Reading from Protected API</h1>
			<?php
				$callback = 'https://www.dictionaryapi.com/api/v3/references/collegiate/json/';
				$word = 'test';
				$url = $callback . $word . '?key=' . $api_key;
				$lookup = json_decode( file_get_contents( $url ) );
			?>
			<dl>
				<dt><?php echo $lookup[0]->meta->id; ?>(<?php echo $lookup[0]->fl; ?>)</dt>
				<dd><?php echo $lookup[0]->shortdef[0]; ?></dd>
			</dl>
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