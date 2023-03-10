<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WP_Bootstrap_Starter
 */

?>
<?php if(!is_page_template( 'blank-page.php' ) && !is_page_template( 'blank-page-with-container.php' )): ?>
  
    <?php get_template_part( 'footer-widget' ); ?>
    
    <!-- <footer id="colophon" class="site-footer <php echo wp_bootstrap_starter_bg_class(); ?>" role="contentinfo">
        <div class="container pt-3 pb-3">
            <div class="site-info">
                &copy; <php echo date('Y'); ?> <php echo '<a href="'.home_url().'">'.get_bloginfo('name').'</a>'; ?>
                <span class="sep"> | </span>
                <a class="credits" href="https://afterimagedesigns.com/wp-bootstrap-starter/" target="_blank" title="WordPress Technical Support" alt="Bootstrap WordPress Theme"><php echo esc_html__('Bootstrap WordPress Theme','wp-bootstrap-starter'); ?></a>

            </div>
        </div>
    </footer> #colophon -->

    <footer class="l-footer">

        <div class="container">

            <div class="row">

                <div class="col-12">

                    <div class="l-widget d-flex align-items-center px-3">

                        <div class="w-100 d-flex justify-content-between">
                            <a 
                            class="u-icon__free u-icon__back u-font-size-0 before::u-font-size-20 u-font-weight-semibold text-decoration-none u-color-folk-black" 
                            href="javascript:history.back()">
                                Ícone voltar 
                            </a>

                            <div class="l-widget__box">
                                <a 
                                class="u-icon__free u-icon__house u-font-size-0 before::u-font-size-32 u-font-weight-semibold text-decoration-none u-color-folk-black" 
                                href="<?php echo get_home_url( null, '/' ) ?>">
                                    Ícone house
                                </a>
                            </div>

                            <a 
                            class="u-icon__free u-icon__list u-font-size-0 before::u-font-size-20 u-font-weight-semibold text-decoration-none u-color-folk-black" 
                            href="<?php echo get_home_url( null, '/' ) ?>">
                                Ícone list
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

<?php endif; ?>
</div><!-- #page -->

<?php wp_footer(); ?>
</body>
</html>