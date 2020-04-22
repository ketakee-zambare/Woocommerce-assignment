<?php
// adding the css and js files

function theme_enqueue_styles()
{
    // wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
    wp_enqueue_style('bootstrap-style', get_stylesheet_directory_uri() . './css/bootstrap.min.css', array(), '4.0.0', 'all');
    wp_enqueue_style( 'load-fa', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' );

    wp_enqueue_script('fontawesome', '//kit.fontawesome.com/a076d05399.js');
    wp_enqueue_script('bootstrap-script', get_stylesheet_directory_uri() . '/js/bootstrap.min.js');
}

add_action('wp_enqueue_scripts', 'theme_enqueue_styles');


// custom logo
function storefront_custom_logo()
{
    $defaults = array(
        'height'      => 100,
        'width'       => 400,
        'flex-height' => true,
        'flex-width'  => true,
        'header-text' => array('site-title', 'site-description'),
    );
    add_theme_support('custom-logo', $defaults);
}
add_action('after_setup_theme', 'storefront_custom_logo');


// Theme support function
add_theme_support('title-tag');
add_theme_support('custom-logo');
add_theme_support('html5', array('search-form'));


// custom nav menu
function wpb_custom_new_menu()
{
    register_nav_menu('primary', __('Primary Header Navigation'));
    register_nav_menu('secondary', __('Main Page Menu'));
    register_nav_menu('dropdown', __('Dropdown Menu'));
}
add_action('init', 'wpb_custom_new_menu');
