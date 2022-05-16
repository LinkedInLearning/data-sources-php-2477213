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
        <title>Reading from Open API | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<?php
				$xkcd = json_decode( file_get_contents('https://xkcd.com/info.0.json') );
				$format = '<div><img src="%1$s" title="%2$s" alt="%3$s" /></div>';
				printf( $format, 
					$xkcd->img,
					$xkcd->title,
					$xkcd->alt
				);
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