<?php
	function pretty_print( $output ) {
		echo '<pre>';
		print_r( $output );
		echo '</pre>';
	}

  	$feed = 'https://casabona.org/feed/';
	if (isset( $_GET['page'] ) ) {
		$page = $_GET['page'];
		$feed .= '?page=' . $page;
	} else {
		$page = 1;
	}
	$content = new SimpleXmlElement( file_get_contents( $feed ) );
	//pretty_print( $content );
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Processing an RSS Feed | Using Data Sources in PHP</title>
        <meta name="author" value="Joe Casabona" />
    </head>
    <body>
		<main>
			<h1><a href="<?php echo  $content->channel->link; ?>"><?php echo $content->channel->title; ?></a></h1>

			<?php
				$format = '<article>
						<h2><a href="%1$s">%2$s</a></h2>
						%3$s
						<footer>Published on %4$s. <a href="%1$s">View Original</a></footer>
					</article>';
				foreach( $content->channel->item as $item ) {
					printf( $format, 
						$item->link,
						$item->title,
						$item->description,
						$item->pubDate
					);
				}
			?>

			<p><a href="?page=<?php echo $page+1; ?>">Next Page</a></p>
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
    </body>
</html>