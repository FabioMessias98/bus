<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WP_Bootstrap_Starter
 */

get_header(); ?>

<section id="primary" class="content-area w-100 h-100">
<div id="main" class="site-main w-100" role="main">

<section class="mb-5 py-5">
	
	<div class="container">

		<div class="row">

			<div class="col-12 mt-3">
				<h5 class="u-font-weight-bold">
					Dia Útil
				</h5>

				<p class="mt-3 mb-0">
					<strong>Sentido:</strong> Ida
				</p>

				<?php
					if( have_rows( 'dia_util_ida' ) ) :
                		while( have_rows( 'dia_util_ida' ) ) : the_row();
				?>
							<span>	
								<?php echo get_sub_field( 'horario' ) ?> |
							</span>
				<?php
						endwhile;
					endif;
				?>

				<p class="mt-3 mb-0">
					<strong>Sentido:</strong> Volta
				</p>

				<?php
					if( have_rows( 'dia_util_volta' ) ) :
                		while( have_rows( 'dia_util_volta' ) ) : the_row();
				?>
							<span>	
								<?php echo get_sub_field( 'horario' ) ?> |
							</span>
				<?php
						endwhile;
					endif;
				?>
			</div>

			<div class="col-12 mt-3">
				<h5 class="u-font-weight-bold">
					Sábado
				</h5>

				<p class="mt-3 mb-0">
					<strong>Sentido:</strong> Ida
				</p>

				<?php
					if( have_rows( 'sabado_ida' ) ) :
                		while( have_rows( 'sabado_ida' ) ) : the_row();
				?>
							<span>	
								<?php echo get_sub_field( 'horario' ) ?> |
							</span>
				<?php
						endwhile;
					endif;
				?>

				<p class="mt-3 mb-0">
					<strong>Sentido:</strong> Volta
				</p>

				<?php
					if( have_rows( 'sabado_volta' ) ) :
                		while( have_rows( 'sabado_volta' ) ) : the_row();
				?>
							<span>	
								<?php echo get_sub_field( 'horario' ) ?> |
							</span>
				<?php
						endwhile;
					endif;
				?>
			</div>
		</div>
	</div>
</section>

</div><!-- #main -->
</section><!-- #primary -->

<?php
get_sidebar();
get_footer();
