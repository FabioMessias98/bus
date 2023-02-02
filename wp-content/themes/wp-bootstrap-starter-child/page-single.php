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

<section class="w-100 h-100" id="primary">
<main id="main" class="site-main w-100" role="main">

<?php while ( have_posts() ) : the_post(); ?>

<section class="w-100 py-5">

    <div class="container">

        <div class="row">

            <div class="col-12">
                
                <h5>
                    Dia Útil
                </h5>

                <p>
                    Ponto: A | Sentido: Ida
                </p>

                <p>
                    04:40 .| 06:10 .| 08:00 .| 10:40 .| 12:30 .| 14:20 .| 16:20 .| 18:20 .| 21:10 .| 22:30 .|
                </p>

                <p>
                    Ponto: B | Sentido: Volta
                </p>

                <p>
                    05:15 .| 06:55 .| 08:50 .| 11:30 .| 13:20 .| 15:20 .| 17:20 .| 19:15 .| 21:55 .| 23:20 .|
                </p>
            </div>
        </div>
    </div>
</section>

<?php endwhile; ?>

</main><!-- #main -->
</section><!-- #primary -->

<?php

get_footer();
