<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */

get_header(); ?>

<section class="w-100 d-flex flex-column justify-content-center align-items-center" style="height:100vh" id="primary">
<main id="main" class="site-main w-100" role="main">

<?php while ( have_posts() ) : the_post(); ?>

<div class="l-notification l-notification--going d-flex flex-column justify-content-center align-items-center u-bg-folk-cyan js-notification-going p-2"></div>
<div class="l-notification l-notification--return d-flex flex-column justify-content-center align-items-center u-bg-folk-purple js-notification-return p-2"></div>

<section class="w-100">

    <div class="container">

        <div class="row">

            <div class="col-12">

                <div class="row">

                    <div class="col-12">
                        <a 
                        class="w-100 px:u-border-radius-8 d-flex justify-content-center align-items-center text-decoration-none u-bg-folk-cyan my-3 py-5"
                        href="<?php echo get_home_url( null, 'terminal-central' ) ?>">
                            <p class="u-font-size-20 u-font-weight-bold text-center text-uppercase u-color-folk-white mb-0 py-4">
                                t. central
                            </p>
                        </a>
                    </div>

                    <div class="col-12">
                        <a 
                        class="w-100 px:u-border-radius-8 d-flex justify-content-center align-items-center text-decoration-none u-bg-folk-cyan my-3 py-5"
                        href="<?php echo get_home_url( null, 'terminal-estudantes' ) ?>">
                            <p class="u-font-size-20 u-font-weight-bold text-center text-uppercase u-color-folk-white mb-0 py-4">
                                t. estudantes
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
    $args = array(
        'posts_per_page' => -1,
        'post_type'      => 'bus-hour',
        'order'          => 'title'
    );

    $contents = new WP_Query( $args );
    
    if( $contents->have_posts() ) :
        while( $contents->have_posts() ) : $contents->the_post();
            if( have_rows( 'dia_util_ida' ) ) :
                while( have_rows( 'dia_util_ida' ) ) : the_row();
                    echo '<span class="´d-none js-business-day" data-value="' . get_the_title() . '" data-sense="ida">' . get_sub_field( 'horario' ) . '</span>';
                endwhile;
            endif;

            if( have_rows( 'dia_util_volta' ) ) :
                while( have_rows( 'dia_util_volta' ) ) : the_row();
                    echo '<span class="d-none js-business-day" data-value="' . get_the_title() . '" data-sense="volta">' . get_sub_field( 'horario' ) . '</span>';
                endwhile;
            endif;
            
            if( have_rows( 'sabado_ida' ) ) :
                while( have_rows( 'sabado_ida' ) ) : the_row();
                    echo '<span class="d-none js-business-day" data-value="' . get_the_title() . '" data-sense="ida">' . get_sub_field( 'horario' ) . '</span>';
                endwhile;
            endif;
        endwhile;
    endif;
    
    wp_reset_query();
?>

<?php endwhile; ?>

</main><!-- #main -->
</section><!-- #primary -->

<?php

get_footer();
