<?php

function bus_hour_init() {
    $args = array(
        'public'       => true,
        'label'        => 'Horário dos Ônibus',
        'show_in_rest' => true, 
        'menu_icon'    => 'dashicons-clock',
        'supports'     => array('title')
    );
    register_post_type('bus-hour', $args );
}
add_action( 'init', 'bus_hour_init' );