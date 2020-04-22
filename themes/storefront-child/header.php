<!DOCTYPE HTML>
<html lang="en">

<head>
        <?php wp_head(); ?>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <!-- <script src='https://kit.fontawesome.com/a076d05399.js'></script> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body <?php body_class('test'); ?>>
        <div class="">
                <div class="page-container">
                        <header class="" id="header">
                                <div class="MainHeader ">
                                        <div class="MainHeader-Border"></div>
                                        <nav class="Page-Content MainHeader-Content container">
                                                <div class="MainHeader-Section">
                                                        <a class="MainHeader-HomeLink MainHeader-Logo" href="/">
                                                                <?php
                                                                if (function_exists('the_custom_logo')) {
                                                                        the_custom_logo();
                                                                }
                                                                ?>
                                                        </a>
                                                <div class="dropdown">
                                                        <a class="dropdown-toggle MainHeader-MainDropdownLink" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>

                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                                <a class="dropdown-item" href="#">
                                                                <h4 class="Dropdown-TagTitle">Development</h4>
                                                                <span class="Dropdown-Count _has-count"> (3,076)</span>
                                                                </a>
                                                                <a class="dropdown-item" href="#"><h4 class="Dropdown-TagTitle">Photography</h4>
                                                                <span class="Dropdown-Count _has-count"> (192)</span>
                                                                </a>
                                                                <a class="dropdown-item" href="#"><h4 class="Dropdown-TagTitle">Playstation</h4>
                                                                <span class="Dropdown-Count _has-count"> (189)</span></a>
                                                                <a class="dropdown-item" href="#"><h4 class="Dropdown-TagTitle">Education</h4>
                                                                <span class="Dropdown-Count _has-count"> (180)</span></a>
                                                                <a class="dropdown-item" href="#"><h4 class="Dropdown-TagTitle">Accessories</h4>
                                                                <span class="Dropdown-Count _has-count"> (179)</span></a>
                                                                <a class="dropdown-item" href="/tags/ps4">
                                                                <h4 class="Dropdown-TagTitle">PS4</h4><span class="Dropdown-Count _has-count"> (174)</span></a>
                                                                <a class="dropdown-item" href="#">
                                                                <h4 class="Dropdown-TagTitle">Open Source</h4><span class="Dropdown-Count _has-count"> (172)</span>
                                                                </a>
                                                                <a class="dropdown-item" href="#">
                                                                <h4 class="Dropdown-TagTitle">Web Development</h4>
                                                                <span class="Dropdown-Count _has-count"> (171)</span>
                                                                </a>
                                                                <a class="dropdown-item" href="#">
                                                                <h4 class="Dropdown-TagTitle">Xbox games</h4>
                                                                <span class="Dropdown-Count _has-count"> (164)</span>
                                                                </a>
                                                        </div>
</div>
                                
</div>
        <div class="MainHeader-Section MainHeader-Search hide-minimum">
                <a class="MainHeader-Search-Icon">
                        <i class='search fas fa-search'></i>
                </a>
                <?php get_search_form() ?>

        </div>
        <div class="MainHeader-Section">
                <div class="MainHeader-Section">
                        <div class="MainHeader-Login">
                                <?php
                                        wp_nav_menu(
                                                array(
                                                        'theme_location' => 'primary',
                                                        'classes' => 'content-block',
                                                )
                                                );
                                        ?>
                        </div>
                </div>
        </div>
   </nav>
</div>
</header>
</div>
</div>