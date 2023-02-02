<?php

function single_create_page() {

    if( function_exists('acf_add_options_page') ) {	
    
        acf_add_options_page( 
            array( 
                'page_title' => 'Ônibus', 
                'menu_title' => 'Ônibus', 
                'menu_slug'  => 'onibus', 
                'capability' => 'edit_posts', 
                'position'   => '23,1', 
                'redirect'   => false, 
                'icon_url'   => 'dashicons-car' 
        ));
    }
}
add_action( 'init', 'single_create_page' );