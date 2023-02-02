<?php

/**
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Evolutap
 *
 * Template Name: Modelo Terminal
 * Template Post Type: page
 */

get_header();
?>

<div class="w-100 h-100 d-flex flex-column justify-content-center align-items-center" id="primary">
<main class="w-100" id="main">

<?php 
    if (have_posts()) : while (have_posts()) : the_post(); 

    $terminal = get_field( 'modelo_terminal');
?>

<section class="w-100 my-5">

    <div class="container">

        <div class="row">

            <div class="col-12 mt-5">

                <div class="row">

                    <?php 
                        if( have_rows( 'onibus', 'option' ) ) : 
                            while( have_rows( 'onibus', 'option' ) ) : the_row();
                                if( get_sub_field( 'terminal' ) == $terminal ) :
                    ?>
                                    <div class="col-6">
                                        <a 
                                        class="w-100 px:u-border-radius-8 d-flex justify-content-center align-items-center text-decoration-none u-bg-folk-cyan my-3 py-5"
                                        href="<?php echo get_sub_field( 'link' ) ?>">
                                            <!-- e305 -->
                                            <p class="u-font-size-20 u-font-weight-bold text-center text-uppercase u-color-folk-white mb-0 py-4">
                                            <?php echo get_sub_field( 'numero' ) ?>
                                            </p>
                                        </a>
                                    </div>
                    <?php
                                endif;
                            endwhile;
                        endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php endwhile; endif; ?>
</main><!-- #main -->
</div><!-- #primary -->

<?php
get_footer();
?>
