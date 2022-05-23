<?php
  function pretty_print( $output ) {
    echo '<pre>';
    print_r( $output );
    echo '</pre>';
  }

  function get_random_img( $num = null ) {
	  $api = 'https://pixelford.com/api/image/id/';
	  $num = ( ! is_null( $num ) ) ? $num : random_int(1,100);
	  
	  return json_decode( file_get_contents( $api . $num ) );
  }

  function get_search_results( $term ) {
	$api = 'https://pixelford.com/api/image/search/';
	return json_decode( file_get_contents( $api . $term ) );
  }

  function print_img( $img ) {
	  $format = '<figure>
	  	<img src="%1$s" alt="%2$s">
		<figcaption>%3$s</figcaption>
		</figure>';

		printf( $format, 
			$img->url_full_size, 
			$img->description,
			$img->title
  		);
  }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Challenge: Randomly Generate Result from API | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
  			<h1>Random Image</h1>
			<?php
				$img = get_random_img();
				print_img( $img[0] ); 
  			?>
			<div>
  				<h2>Search</h2>
				  <form name="search" method="get">
					  <input type="text" name="term" />
				  </form>
				  <?php
				  	if( isset( $_GET['term'] ) ) {
						  $results = get_search_results( $_GET['term'] );
						  echo '<h3>Search results for '. $_GET['term'] .'</h3>';
						  foreach( $results as $img ) {
							  print_img( $img );
						  }
					  }
				?>
			</div>
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

			figure {
				background: #333333;
				padding: 10px;
				margin: 15px auto;
				max-width: 95%;
			}

			figure img {
				max-width: 100%;
				height: auto;
			}

			figcaption {
				color: #FFFFFF;
				text-align: center;
			}

			form {
				margin: 25px;
			}

			form input {
				width: 100%;
				padding: 5px;
				font-size: 20px;
			}
		</style>
    </body>
</html>