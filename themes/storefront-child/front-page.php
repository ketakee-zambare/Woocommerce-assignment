<!-- 
    Template Name: Home
 -->
<?php get_header(); ?>
<main>
    <section class="Page SummaryPage main" id="main">
        <div class="QuestionHeader">
            <div class="Page-Content container">
                <div class="QuestionHeader-LinkBar">
                    <div class="QuestionHeader-Links">
                        <div class="QuestionHeader-Links-Item">
                            <div class="QuestionHeader-WatchLink">
                                <a class="">Follow</a>
                            </div>
                        </div>
<!-- follow dropdown -->
                    <div class="dropdown">
                        <a class="LinkBar-More" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink"  style="left: -238px;">
                            <div class="Dropdown-Content fullHeight">
                            <a class="Dropdown-Item small" href="#">List View</a>
                            <a class="Dropdown-Item small" href="#">Compare View</a>
                            <a class="Dropdown-Item small" href="#">Comments</a>
                            <a class="_edit-link Dropdown-Item small" href="#">Add/Edit Tags</a>
                            <a class="Dropdown-Item small" href="#">See Update History</a>
                            <a class="Dropdown-Item small" href="#">Update Question</a>
                            <a class="option-link Dropdown-Item small" href="#">Add Option</a>
                                <div class="Dropdown-Seperator padded"></div>
                                <div class="Dropdown-Label">Share</div>
                                <div class="Dropdown-SocialItem no-hover"></div>
                                <div class="Dropdown-Seperator padded"></div>
                                <div class="Dropdown-Label">Mark Question As</div>
                                <div class="">
                                <div class="Dropdown-Content-NoItems">
                                <div class="show-anonymous">Please claim your account to do this<button class="PrimaryButton important">Claim Account</button></div>
                            <div class="show-not-anonymous">Please create an account to do this
                            <button class="PrimaryButton important">Create Account</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <!-- follow dropdown ends-->
</div>
</div>
<div class="QuestionHeader-TagBar">
    <div class="QuestionHeader-Tag">
        <?php
        wp_nav_menu(
            array(
                'theme_location' => 'secondary',
            )
        );
        ?>
    </div>
</div>
    <h1 class="QuestionHeader-Title">
        <a class="QuestionHeader-TitleLink" href="#">
            What are the best drag and drop WordPress page builders?
        </a>
    </h1>
    <div class="Contributors-StatContainer QuestionHeader-ContributorStats">
        <div class="Contributors-StatBar">
            <div class="Contributors-Stat">
                <div class="Contributors-Stat-Value">
                    10<span class="Contributors-Stat-Unit">
                    </span>
                </div>
                <div class="Contributors-Stat-Label">Options&nbsp;<br>Considered</div>
            </div>
            <div class="Contributors-Stat hide-minimum">
                <div class="Contributors-Stat-Value">18<span class="Contributors-Stat-Unit"></span>
                </div>
                <div class="Contributors-Stat-Label">User&nbsp;<br>Recs.</div>
            </div>
            <div class="Contributors-Stat">
                <div class="Contributors-Stat-Value">
                    <time class="" itemprop="dateModified" datetime="2020-01-16T19:37:06.859Z" content="2020-01-16T19:37:06.859Z">Jan 16, 2020</time>
                </div>
                <div class="Contributors-Stat-Label">Last&nbsp;<br>Updated</div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- 10 Optins consider section starts -->
    <div class="CardList-Container">
        <div class="JoinTagBanner-TagList">
            <div class="">
                <div class="QuestionDetailed-Content">
                    <div class="">
                        <div class="OptionDetailed-Section">
                        <div class="OptionDetailed-SectionHeader small">
                                <h4 class="OptionDetailed-SectionHeader-Label centered">
                                    <span class="">10</span>
                                    <span class=""> Options</span>
                                    <span>Considered</span>
                                    <a class="OptionDetailed-SectionHeader-Label-Link">
                                        <i class="fa fa-info-circle Icon info-circle-solid OptionDetailed-SectionHeader-Label-Icon"></i>
                                    </a>
                                </h4>
                        </div>
            <div class="SpecTable SummaryPage-SpecTable" style="margin:18px;">
                <div class="SpecTable-Content">
                    <table class="SpecTable-Table">
                        <tbody class="SpecTable-TableBody">
                            <tr class="SpecTable-Row">
                                <th class="SpecTable-HeaderCell SpecTable-TitleHeaderCell">Best drag and drop WordPress page builders</th>
                                <th class="SpecTable-HeaderCell">Price</th>
                                <th class="SpecTable-HeaderCell">Last Updated</th>
                            </tr>
                            <tr class="SpecTable-Row">
                                <td class="SpecTable-Cell" >
                                    <div class="SpecTable-TitleCell">
                                        <div class="">
                                            <a class="SlantScore-Score-Link">
                                                <div class="SlantScore-Score">
                                                    <div class="">--</div>
                                                </div>
                                            </a>
                                        </div>
                                            <a class="SpecTable-Image">
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/divi.webp" class="img-fluid">
                                            </a>
                                            <span class="SpecTable-TitleCell-Body">
                                                <a class="SpecTable-TitleCell-Link" href="#divi">Divi</a>
                                            </span>
                                    </div>
                                </td>
                                <td class="SpecTable-Cell price">
                                    <span class="">$69/year</span>
                                </td>
                                <td class="SpecTable-Cell">Jan 16, 2020</td>
                            </tr>
                            <tr class="SpecTable-Row">
                                <td class="SpecTable-Cell">
                                    <div class="SpecTable-TitleCell">
                                        <div class="">
                                            <a class="SlantScore-Score-Link">
                                            <div class="SlantScore-Score">
                                                <div class="">--</div>
                                            </div>
                                            </a>
                                        </div>
                                        <a class="SpecTable-Image">
                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/beaver.webp" class="img-fluid">
                                        </a>
                                        <span class="SpecTable-TitleCell-Body">
                                        <a class="SpecTable-TitleCell-Link" href="#beaver">Beaver Builder</a>
                                        </span>
                                    </div>
                                </td>
                                <td class="SpecTable-Cell price">
                                <span class="">-</span>
                                </td>
                                <td class="SpecTable-Cell">Jan 16, 2020</td>
                            </tr>
                            <tr class="SpecTable-Row Images-ImageList-Item">
                                <td class="SpecTable-Cell">
                                    <div class="SpecTable-TitleCell">
                                        <div class="">
                                            <a class="SlantScore-Score-Link">
                                                <div class="SlantScore-Score">
                                                    <div class="">--</div>
                                                </div>
                                            </a>
                                        </div>
                                        <a class="SpecTable-Image">
                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/elementor.png" class="img-fluid"> 
                                        </a>
                                        <span class="SpecTable-TitleCell-Body">
                                        <a class="SpecTable-TitleCell-Link" href="#elementor">Elementor Page Builder</a>
                                        </span>
                                    </div>
                                </td>
                                <td class="SpecTable-Cell price"><span class="">$0-199/YEAR</span></td>
                                <td class="SpecTable-Cell">Aug 13, 2019</td>
                            </tr>
                            <tr class="SpecTable-Row Images-ImageList-Item">
                                <td class="SpecTable-Cell">
                                    <div class="SpecTable-TitleCell">
                                        <div class="">
                                            <a class="SlantScore-Score-Link">
                                                <div class="SlantScore-Score">
                                                    <div class="">--</div>
                                                </div>
                                            </a>
                                        </div>
                                        <a class="SpecTable-Image">
                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/kepler.png" class="img-fluid">
                                        </a>
                                        <span class="SpecTable-TitleCell-Body">
                                        <a class="SpecTable-TitleCell-Link" href="#kepler">Kepler</a>
                                        </span>
                                    </div>
                                </td>
                                <td class="SpecTable-Cell price">
                                <span class="">24</span>
                                </td>
                                <td class="SpecTable-Cell">Jan 10, 2020</td>
                                </tr>
                                <tr class="SpecTable-Row Images-ImageList-Item">
                                    <td class="SpecTable-Cell">
                                        <div class="SpecTable-TitleCell">
                                            <div class="">
                                                <a class="SlantScore-Score-Link">
                                                    <div class="SlantScore-Score">
                                                        <div class="">--</div>
                                                     </div>
                                                </a>
                                            </div>
                                            <a class="SpecTable-Image">
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/wordpress.png" class="img-fluid">
                                            </a>
                                            <span class="SpecTable-TitleCell-Body">
                                            <a class="SpecTable-TitleCell-Link" href="#gutenberg">WordPress Gutenberg</a>
                                            </span>
                                        </div>
                                    </td>
                                    <td class="SpecTable-Cell price"><span class="">-</span>
                                    </td>
                                    <td class="SpecTable-Cell">Aug 13, 2019</td>
                                </tr>
                        </tbody>
                    </table>
                </div>
                <div class="SpecTable-Links">
                        <a class="SpecTable-LoadMore" data-toggle="modal" data-target="#basicModal" href="#">
                        <i class="fa fa-expand mr-2" aria-hidden="true"></i>See Full List</a>
                </div>
            </div>        
        </div>
<!-- see full list modal -->
<div class="modal" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">       
    <div class="container" style="vertical-align: middle;margin: auto;padding: 80px;">
        <div id="id01" class="w3-modal">
            <div class="w3-modal-content w3-card-4">
            <table class="SpecTable-Table">
                <tbody class="SpecTable-TableBody">
                    <tr class="SpecTable-Row">
                        <th class="SpecTable-HeaderCell SpecTable-TitleHeaderCell">Best drag and drop WordPress page builders</th>
                        <th class="SpecTable-HeaderCell">Price</th>
                        <th class="SpecTable-HeaderCell">Last Updated</th>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link" >
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/e16fe25b-5922-4883-9d20-33b0f1f58a67/-/format/jpeg/-/progressive/yes/-/preview/160x160/');">
                                </a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#divi">Divi</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price">
                            <span class="">$69/year</span>
                        </td>
                        <td class="SpecTable-Cell">Jan 16, 2020</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/a2cfb7f0-64bf-486b-b3ec-2cf48e6a02b6/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#beaver">Beaver Builder</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price">
                            <span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">Jan 16, 2020</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/e45938c6-47e0-4866-87a5-932b2a9fff64/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                <a class="SpecTable-TitleCell-Link" href="#elementor">Elementor Page Builder</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">$0-199/YEAR</span>
                        </td>
                        <td class="SpecTable-Cell">Aug 13, 2019</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/c53e9611-5213-4467-9207-4aaa323ac821/-/format/jpeg/-/progressive/yes/-/preview/160x160/');">
                                </a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#kepler">Kepler</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price">
                            <span class="">24</span>
                        </td>
                        <td class="SpecTable-Cell">Jan 10, 2020</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/293d6ecb-506d-495a-9e14-2c9e1d2484c0/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#gutenberg">WordPress Gutenberg</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">Aug 13, 2019</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/ebce8898-197e-41fd-af22-711a868fad50/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#themify">Themify Builder</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">Oct 2, 2015</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item ">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/5280d40a-2b7b-4995-a8d3-3f5cb0e300f9/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#sandwich">Page Builder Sandwitch</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">May 9, 2017</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/fcffb11e-797b-4841-9afe-caaf2cf52b6c/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#velocity">Velocity Page</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">Oct 2, 2015</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/3b817b06-03e8-48e5-9270-02d9dc961120/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="SpecTable-TitleCell-Link" href="#siteorigine">Page Builder by Site Origin</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">Feb 2, 2018</td>
                    </tr>
                    <tr class="SpecTable-Row Images-ImageList-Item">
                        <td class="SpecTable-Cell">
                            <div class="SpecTable-TitleCell">
                                <div class="">
                                    <a class="SlantScore-Score-Link">
                                        <div class="SlantScore-Score">
                                            <div class="">--</div>
                                        </div>
                                    </a>
                                </div>
                                <a class="SpecTable-Image Images-ImageList-Item-Image" style=" background-image: URL('https://cdn.slant.co/4d73eb9d-aaab-4c4c-a182-e04ec0317514/-/format/jpeg/-/progressive/yes/-/preview/160x160/');"></a>
                                <span class="SpecTable-TitleCell-Body">
                                    <a class="" href="#headway">Headway Themes</a>
                                </span>
                            </div>
                        </td>
                        <td class="SpecTable-Cell price"><span class="">-</span>
                        </td>
                        <td class="SpecTable-Cell">Jan 17,2020</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
<!-- see full list modal -->
                       
<!-- divi starts-->
    <div class="OptionPreviewList">
        <div class="">
            <div class="CardList-Item">
                <div class="SummaryPage-Option-Header">
                    <div class="SummaryPage-Option-Header-Body">
                        <div class="SummaryPage-Option-Title">
                            <div class="">
                                <div class="SlantScore">
                                    <a class="" id="divi">
                                        <div class="">
                                            <div class="SlantScore-BadgeContainer">
                                                <div class="SlantScore-Badge">
                                                    <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                    <div class="">--</div>
                                                    </span>
                                                </div>
                                           </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <h2 class="SummaryPage-Option-Title-Text">
                                    <a class="" title="Divi" rel="nofollow" href="#">
                                        <span>Divi</span>
                                    </a>
                            </h2>
                        </div>
                            <a class="LinkBar-More"></a>
                     </div>
                    <div class="SummaryPage-Option-Gallery">
                        <div class="ImageCarousel">
                            <div class="Carousel-Bounds">
                                <div class="ImageCarousel-Offset Carousel-Offset"></div>
                                    <div class="ImageCarousel-Content Carousel-Content singleItem">
                                        <div class="Carousel-List" style="left: 0px;">
                                            <div class="ImageCarousel-Item">
                                                <a class="ImageCarousel-ItemLink"></a>
                                                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/divi.webp" class="img-fluid ImageCarousel-Image">
                                                </a>
                                            </div>
                                           <div class="ImageCarousel-Item add">
                                                <a class="ImageCarousel-AddItem">
                                                <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                                                <span>Add Video or Image</span>
                                                </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="SummaryPage-OptionTabs-Container">
                        <div class="SummaryPage-Option-Body">
                            <div class="SummaryPage-OptionTabs">
                                <a class="SummaryPage-OptionTabs-Item selected" data-toggle="tab" role="tab" aria-selected="true"  href="#">All
                                    <div class="SummaryPage-OptionTabs-Item-Count">2</div>
                                </a>
                                <a class="SummaryPage-OptionTabs-Item" data-toggle="tab" role="tab"  aria-selected="true" href="#">Pros
                                    <div class="SummaryPage-OptionTabs-Item-Count">2</div>
                                </a>
                                <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;"></div>
                            </div>
                            <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
                                <div class="SummaryPage-OptionTabs-SectionList">
                                    <div class="SummaryPage-Option-Body-Item pro">
                                        <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                                            <div class="SummaryPage-Option-Body-Item-Avatar">
                                                <div class="ComboAvatar">
                                                    <div class="ComboAvatar-TooltipLink">
                                                        <div class="ComboAvatar-Image main Avatar singleImage">
                                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/tom.webp" class="img-fluid" alt="Tom Steenhuysen">
                                                        </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="SummaryPage-Option-Body-Item-Content-Header">
                                                <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                                                    <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top </span>Pro</div>
                                                    <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                                                </div>
                                                <div class="SummaryPage-Option-Body-Item-Content-Title">
                                                    <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                                                        <h3>A growing marketplace</h3>
                                                    </a>
                                                </div>
                                                <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body"> More and more tools are being developed to address community feedback. </a>
                                            </div>
                                        </div>
                                                    <div class="SummaryPage-Option-Body-Item pro">
                                                        <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                                                            <div class="SummaryPage-Option-Body-Item-Avatar">
                                                                <div class="ComboAvatar">
                                                                    <div class="ComboAvatar-TooltipLink">
                                                                        <div class="ComboAvatar-Image main Avatar singleImage">
                                                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/tom.webp" class="img-fluid" alt="Tom Steenhuysen">
                                                                        </a>
                                                                       </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="SummaryPage-Option-Body-Item-Content-Header">
                                                                <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                                                                    <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top </span>Pro</div>
                                                                <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                                                            </div>
                                                            <div class="SummaryPage-Option-Body-Item-Content-Title">
                                                                <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                                                                    <h3>Flexible</h3>
                                                                </a>
                                                            </div>
                                                            <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body"> Once you understand the deeper settings, it's easy to have it work. </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="SummaryPage-Option-Footer">
                                        <div class="SummaryPage-GetItHere">
                                        <a class="" href="#" target="_blank" rel="nofollow noopener">
                                        <button class="GetItHereButton">
                                        <span class="GetItHereButton-Price"><i class="fa fa-link mr-2" aria-hidden="true"></i>$69/year</span>
                                        </button>
                                        </a>
                                    </div>
                                    <div class="SummaryPage-Vote">
                                        <button class="SummaryPage-Vote-Button agree">
                                                <span class="SummaryPage-Vote-Button-Text">
                                                    <i class="fa fa-thumbs-o-up mr-2"></i>Recommend</span>
                                                <span class="SummaryPage-Vote-Button-Count">5</span>
                                            </button>
                                            <button class="SummaryPage-Vote-Button disagree">
                                                <i class="fa fa-thumbs-o-down mr-2"></i>
                                                <span class="SummaryPage-Vote-Button-Count">1</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

<!-- divi ends-->
                    
<!-- find the best product  starts-->
<div class="">
    <div class="show-loggedout">
        <div class="CardList-Item SummaryPage-LustrePromo">
            <div class="SummaryPage-LustrePromoBuiltBy">Built by Slant</div>
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/lustre-logo.svg" class="img-fluid SummaryPage-LustrePromoLogo">
            </a>
            <div class="SummaryPage-LustrePromoHeader">Find the best product<br>instantly.</div>
            <div class="SummaryPage-LustrePromoText">Stop wasting time searching endlessly. Lustre recommends the best products at their lowest prices
            <span class="hide-mobile show-chrome">&nbsp;– right on Amazon</span>.</div>
            <div class="LustreAIBanner-StarsContainer">
            <div class="LustreAIBanner-Stars"></div>
                <span>4.7 star rating</span>
            </div>
            <a class="AIHome-LinkButton AIHome-ChromeButton show-chrome AIHome-LinkButton_medium AIHome-ChromeButton_medium" href="#" rel="nofollow noopener">
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/chrome-logo.svg">Add to Chrome - It's Free</a>
        </div>
    </div>
</div>
<!-- find the best product ends-->
<!-- Beaver Builder starts-->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title" id="beaver">
                            <div class="SlantScore">
                                <a class="" id="beaver">
                                    <div class="SlantScore-BadgeContainer">
                                        <div class="SlantScore-Badge">
                                            <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                <div class="">--</div>
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <h2 class="SummaryPage-Option-Title-Text">
                        <a class="" title="Beaver Builder" rel="nofollow"><span>Beaver Builder</span></a>
                        </h2>
                    </div>
                    <a class="LinkBar-More"></a>
                </div>
        <div class="SummaryPage-Option-Gallery">
            <div class="ImageCarousel">
                <div class="">
                    <div class="ImageCarousel-Content Carousel-Content singleItem">
                        <div class="Carousel-List" style="left: 0px;">
                            <div class="ImageCarousel-Item">
                                <a class="ImageCarousel-ItemLink"></a>
                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/beaver.webp" class="img-fluid ImageCarousel-Image">
                            </div>
                            <div class="ImageCarousel-Item add">
                                <a class="ImageCarousel-AddItem">
                                <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                                <span>Add Video or Image</span></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="SummaryPage-OptionTabs-Container">
            <div class="SummaryPage-Option-Body">
                <div class="SummaryPage-OptionTabs">
                    <a class="SummaryPage-OptionTabs-Item selected">All<div class="SummaryPage-OptionTabs-Item-Count">8</div></a>
                    <a class="SummaryPage-OptionTabs-Item">Experiences<div class="SummaryPage-OptionTabs-Item-Count">1</div></a>
                    <a class="SummaryPage-OptionTabs-Item">Pros<div class="SummaryPage-OptionTabs-Item-Count">6</div></a>
                    <a class="SummaryPage-OptionTabs-Item">Cons<div class="SummaryPage-OptionTabs-Item-Count">1</div></a>
                <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;"></div>
            </div> 
<!-- all 8 starts -->
<div class="tab-content">
<div class="tab-pane active" id="tab_default_1">
    <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
        <div class="SummaryPage-OptionTabs-SectionList">
            <div class="SummaryPage-Option-Body-Item pro">
                <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                    <div class="SummaryPage-Option-Body-Item-Avatar">
                        <div class="ComboAvatar">
                            <div class="ComboAvatar-TooltipLink">
                                <div class="ComboAvatar-Image main Avatar">
                                    <img src="<?php bloginfo('template_directory'); ?>/assets/images/adden.webp" class="img-fluid">
                                </div>
                                <div class="ComboAvatar-Image secondary Avatar twoImages">
                                    <img src="<?php bloginfo('template_directory'); ?>/assets/images/amiable.webp" class="img-fluid">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="SummaryPage-Option-Body-Item-Content-Header">
                    <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                    <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top </span>Pro</div>
                    <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                </div>
                    <div class="SummaryPage-Option-Body-Item-Content-Title">
                    <a class="SummaryPage-Option-Body-Item-Content-Title-Text"><h3>Stable</h3></a>
            </div>
                <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body"> performs quickly, doesn't get hung up easily </a>
        </div>
    </div>
            <div class="SummaryPage-Option-Body-Item con">
                <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                    <div class="SummaryPage-Option-Body-Item-Avatar">
                        <div class="ComboAvatar">
                            <div class="ComboAvatar-TooltipLink">
                                <div class="ComboAvatar-Image main Avatar singleImage">
                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="SummaryPage-Option-Body-Item-Content-Header">
                        <div class="SummaryPage-Option-Body-Item-Content-Label con">
                            <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top </span>Con</div>
                            <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                        </div>

                        <div class="SummaryPage-Option-Body-Item-Content-Title">
                            <a class="SummaryPage-Option-Body-Item-Content-Title-Text"><h3>Expensive</h3></a>
                        </div>
                </div>
            </div>
</div>
<!-- all 8 ends -->
</div>
</div>
        <div class="SummaryPage-Option-Body-MoreLink">
            <a class="OptionPreviewList-ReadMore-Label hide-mobile">            
                <label for="toggle" class="mr-1">See All</label>
                <i class='fas fa-chevron-down'></i>
            </a>
        </div>
    </div>
</div>
        <div class="SummaryPage-Option-Footer">
            <div class="SummaryPage-GetItHere">
                <a class="" href="https://www.wpbeaverbuilder.com/?fla=172" target="_blank" rel="nofollow noopener">
                    <button class="GetItHereButton">
                        <span class=""><i class="fa fa-link mr-2" aria-hidden="true"></i>Get it<span class="hide-minimum"> here</span>
                        </span>
                    </button>
                </a>
            </div>
            <div class="SummaryPage-Vote">
                <button class="SummaryPage-Vote-Button agree">
                    <span class="SummaryPage-Vote-Button-Text">
                        <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
                        <span class="SummaryPage-Vote-Button-Count">4</span>
                </button>
                <button class="SummaryPage-Vote-Button disagree">
                    <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- Beaver Builder -->

<!-- elementor stats -->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset" id="elementor"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title">
                        <div class="">
                            <div class="SlantScore">
                                <a class="">
                                <div class="">
                                    <div class="SlantScore-BadgeContainer">
                                        <div class="SlantScore-Badge">
                                            <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                <div class="">--</div>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                </a>
                                </div>
                            </div>
                            <h2 class="SummaryPage-Option-Title-Text">
                            <a class="" href="#" title="Elementor Page Builder" rel="nofollow">
                                <span>Elementor Page Builder</span>
                            </a>
                            </h2>
                            </div>
                            <a class="LinkBar-More"></a>
                            </div>
                            <div class="SummaryPage-Option-Gallery">
                                <div class="ImageCarousel">
                                    <div class="Carousel-Bounds">
                                        <div class="ImageCarousel-Offset Carousel-Offset"></div>
                                        <div class="ImageCarousel-Content Carousel-Content singleItem">
                                            <div class="Carousel-List" style="left: 0px;">
                                                <div class="ImageCarousel-Item">
                                                        <a class="ImageCarousel-ItemLink"></a>
                                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/elementor.png" class="img-fluid  ImageCarousel-Image">
                                                    </div>
                                                        <div class="ImageCarousel-Item add">
                                                            <a class="ImageCarousel-AddItem">
                                                            <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                                                            <span>Add Video or Image</span></a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="SummaryPage-OptionTabs-Container">
                                    <div class="SummaryPage-Option-Body">
                                        <div class="SummaryPage-OptionTabs">
                                            <a class="SummaryPage-OptionTabs-Item selected">All<div class="SummaryPage-OptionTabs-Item-Count">3</div></a>
                                            <a class="SummaryPage-OptionTabs-Item">Experiences<div class="SummaryPage-OptionTabs-Item-Count">2</div></a>
                                            <a class="SummaryPage-OptionTabs-Item">Pros<div class="SummaryPage-OptionTabs-Item-Count">1</div></a>
                                            <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;"></div>
                                        </div>
                                        <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
                                            <div class="SummaryPage-OptionTabs-SectionList">
                                                <div class="SummaryPage-Option-Body-Item pro">
                                                    <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                                                        <div class="SummaryPage-Option-Body-Item-Avatar">
                                                            <div class="AvatarWrapper">
                                                                <div class="">
                                                                <a class="Avatar big" href="#">
                                                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="SummaryPage-Option-Body-Item-Content-Header">
                                                            <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                                                                <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top </span>Pro</div>
                                                            <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                                                        </div>
                                                        <div class="SummaryPage-Option-Body-Item-Content-Title">
                                                            <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                                                                <h3>Simple and easy to use</h3>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="SummaryPage-Option-Body-Item">
                                                    <div class="SummaryPage-Option-Body-Item-Content collapsed section">
                                                        <div class="SummaryPage-Option-Body-Item-Avatar">
                                                            <div class="AvatarWrapper">
                                                                <div class="">
                                                                <a class="Avatar big" href="#">
                                                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/lokman.webp" class="img-fluid" alt="lokman">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <div class="SummaryPage-Option-Body-Item-Content-Header">
                                                            <div class="SummaryPage-Option-Body-Item-Content-Label rec">Lokman Afandy's Experience</div>
                                                        </div>
                                                        <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body">Easily customize posts and pages with drag and drop, much better than gutenberg </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="SummaryPage-Option-Body-MoreLink">
                                            <a class="OptionPreviewList-ReadMore-Label hide-mobile">
                                            <label for="toggle" class="mr-1">See All</label>
                                            <i class='fas fa-chevron-down'></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="SummaryPage-Option-Footer">
                                    <div class="SummaryPage-GetItHere">
                                        <a href="https://kepler.app" target="_blank" rel="nofollow noopener">
                                        <button class="GetItHereButton">
                                                <span class="GetItHereButton-Price">
                                                    <i class="fa fa-link mr-2" aria-hidden="true"></i>24</span>
                                        </button>
                                        </a>
                                    </div>
                                    <div class="SummaryPage-Vote">
                                        <button class="SummaryPage-Vote-Button agree">
                                            <span class="SummaryPage-Vote-Button-Text">
                                                <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
                                            <span class="SummaryPage-Vote-Button-Count">4</span>
                                        </button>
                                        <button class="SummaryPage-Vote-Button disagree">
                                        <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
<!-- elementor ends -->
<!-- Kepler -->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset" id="kepler"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title">
                        <div class="">
                            <div class="SlantScore">
                                <a class="">
                                <div class="">
                                    <div class="SlantScore-BadgeContainer">
                                        <div class="SlantScore-Badge">
                                            <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                <div class="">--</div>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                </a>
                                </div>
                            </div>
                            <h2 class="SummaryPage-Option-Title-Text">
                            <a class="" href="#" title="Kepler" rel="nofollow">
                                <span>Kepler</span>
                            </a>
                            </h2>
                            </div>
                            <a class="LinkBar-More"></a>
                            </div>
                            <div class="SummaryPage-Option-Gallery">
                                <div class="ImageCarousel">
                                    <div class="Carousel-Bounds">
                                        <div class="ImageCarousel-Offset Carousel-Offset"></div>
                                        <div class="ImageCarousel-Content Carousel-Content singleItem">
                                            <div class="Carousel-List" style="left: 0px;">
                                                <div class="ImageCarousel-Item">
                                                        <a class="ImageCarousel-ItemLink"></a>
                                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/kepler.png" class="img-fluid  ImageCarousel-Image">
                                                    </div>
                                                        <div class="ImageCarousel-Item add">
                                                            <a class="ImageCarousel-AddItem">
                                                            <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                                                            <span>Add Video or Image</span></a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="SummaryPage-OptionTabs-Container">
                                    <div class="SummaryPage-Option-Body">
                                        <div class="SummaryPage-OptionTabs">
                                            <a class="SummaryPage-OptionTabs-Item selected">All<div class="SummaryPage-OptionTabs-Item-Count">3</div></a>
                                            <a class="SummaryPage-OptionTabs-Item">Experiences<div class="SummaryPage-OptionTabs-Item-Count">2</div></a>
                                            <a class="SummaryPage-OptionTabs-Item">Pros<div class="SummaryPage-OptionTabs-Item-Count">1</div></a>
                                            <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;"></div>
                                        </div>
                                        <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
                                            <div class="SummaryPage-OptionTabs-SectionList">
                                                <div class="SummaryPage-Option-Body-Item pro">
                                                    <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                                                        <div class="SummaryPage-Option-Body-Item-Avatar">
                                                            <div class="AvatarWrapper">
                                                                <div class="">
                                                                <a class="Avatar big" href="#">
                                                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/adden.webp" class="img-fluid">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="SummaryPage-Option-Body-Item-Content-Header">
                                                            <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                                                                <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top </span>Pro</div>
                                                            <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                                                        </div>
                                                        <div class="SummaryPage-Option-Body-Item-Content-Title">
                                                            <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                                                                <h3>No coding knowledge required</h3>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="SummaryPage-Option-Body-Item">
                                                    <div class="SummaryPage-Option-Body-Item-Content collapsed section">
                                                        <div class="SummaryPage-Option-Body-Item-Avatar">
                                                            <div class="AvatarWrapper">
                                                                <div class="">
                                                                <a class="Avatar big" href="#">
                                                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/adden.webp" class="img-fluid" alt="CompetentHygieia">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <div class="SummaryPage-Option-Body-Item-Content-Header">
                                                            <div class="SummaryPage-Option-Body-Item-Content-Label rec">CompetentHygieia's Experience</div>
                                                        </div>
                                                        <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body"> Only Wordpress Visual Builder you will ever need. </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="SummaryPage-Option-Body-MoreLink">
                                            <a class="OptionPreviewList-ReadMore-Label hide-mobile">
                                            <label for="toggle" class="mr-1">See All</label>
                                            <i class='fas fa-chevron-down'></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="SummaryPage-Option-Footer">
                                    <div class="SummaryPage-GetItHere">
                                        <a href="https://kepler.app" target="_blank" rel="nofollow noopener">
                                        <button class="GetItHereButton">
                                                <span class="GetItHereButton-Price">
                                                    <i class="fa fa-link mr-2" aria-hidden="true"></i>24</span>
                                        </button>
                                        </a>
                                    </div>
                                    <div class="SummaryPage-Vote">
                                        <button class="SummaryPage-Vote-Button agree">
                                            <span class="SummaryPage-Vote-Button-Text">
                                                <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
                                            <span class="SummaryPage-Vote-Button-Count">2</span>
                                        </button>
                                        <button class="SummaryPage-Vote-Button disagree">
                                        <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
</div>
<!-- Kepler -->

<!-- Wordpress Gutenburg  starts-->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title" id="gutenberg">
                        <div class="">
                            <div class="SlantScore">
                            <a class="">
                            <div class="">
                                <div class="SlantScore-BadgeContainer">
                                    <div class="SlantScore-Badge"><span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                        <div class="">--</div></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <h2 class="SummaryPage-Option-Title-Text">
                    <a class="" href="#" title="WordPress Gutenberg" rel="nofollow"><span>WordPress Gutenberg</span></a></h2>
                </div>
                <a class="LinkBar-More"></a>
            </div>
<div class="SummaryPage-Option-Gallery">
    <div class="ImageCarousel">
        <div class="Carousel-Bounds">
            <div class="ImageCarousel-Offset Carousel-Offset"></div>
        <div class="ImageCarousel-Content Carousel-Content singleItem">
            <div class="Carousel-List" style="left: 0px;">
                <div class="ImageCarousel-Item">
                    <a class="ImageCarousel-ItemLink"></a>
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/wordpress.png" class="img-fluid  ImageCarousel-Image">
                    </a>
                </div>
            <div class="ImageCarousel-Item add">
            <a class="ImageCarousel-AddItem">
            <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
            <span>Add Video or Image</span></a>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
<div class="SummaryPage-OptionTabs-Container">
    <div class="">
        <div class="SummaryPage-OptionTabs">
            <a class="SummaryPage-OptionTabs-Item selected">All<div class="SummaryPage-OptionTabs-Item-Count">2
</div>
</a>
<a class="SummaryPage-OptionTabs-Item">Cons<div class="SummaryPage-OptionTabs-Item-Count">2</div></a>
    <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;">
    </div>
</div>
<div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
    <div class="SummaryPage-OptionTabs-SectionList">
        <div class="SummaryPage-Option-Body-Item con">
            <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                <div class="SummaryPage-Option-Body-Item-Avatar">
                    <div class="AvatarWrapper">
                        <div class="">
                            <a class="Avatar big" href="#">
                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/lokman.webp" class="img-fluid">
                            </a>
                        </div>
                                               
                    </div>
                </div>
                <div class="SummaryPage-Option-Body-Item-Content-Header">
                    <div class="SummaryPage-Option-Body-Item-Content-Label con">
                        <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top</span>Con</div>
                    <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                </div>
                <div class="SummaryPage-Option-Body-Item-Content-Title">
                <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                <h3>Bad Media resizing/alignment</h3></a>
            </div>
        </div>
    </div>
        <div class="SummaryPage-Option-Body-Item con">
        <div class="SummaryPage-Option-Body-Item-Content section collapsed">
        <div class="SummaryPage-Option-Body-Item-Avatar">
        <div class="AvatarWrapper">
            <div class="">
                <a class="Avatar big" href="#">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/lokman.webp" class="img-fluid">
                </a>
            </div>
                                               
        </div>
    </div>
        <div class="SummaryPage-Option-Body-Item-Content-Header">
            <div class="SummaryPage-Option-Body-Item-Content-Label con">
                <span class="SummaryPage-Option-Body-Item-Content-Label-Top"></span>Con
            </div>
                <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
        </div>
        <div class="SummaryPage-Option-Body-Item-Content-Title">
            <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
            <h3>Bad table support</h3>
            </a>
        </div>
        <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body">table doesn't support table shading and text colour </a>
        </div>
    </div>
</div>
</div>
</div>
</div>
        <div class="SummaryPage-Option-Footer mt-3">
        <div class="SummaryPage-GetItHere">
        <a class="" href="https://wordpress.org/gutenberg/" target="_blank" rel="nofollow noopener">
            <button class="GetItHereButton">
                <div class="GetItHereButton-Icon"></div>
                <span class=""><i class="fa fa-link mr-2" aria-hidden="true"></i>Get it<span class="hide-minimum">here</span></span>
            </button>
        </a>
        </div>
        <div class="SummaryPage-Vote"><button class="SummaryPage-Vote-Button agree">
        <span class="SummaryPage-Vote-Button-Text">
            <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
        </button>
        <button class="SummaryPage-Vote-Button disagree">
            <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
        </button>
        </div>
    </div>
</div>
</div>
<!-- wordpress gutenburg ends -->

<!-- Themify stats -->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title" id="themify">
                        <div class="">
                        <div class="SlantScore">
                            <a class="">
                            <div class="" >
                                <div class="SlantScore-BadgeContainer">
                                    <div class="SlantScore-Badge">
                                        <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                        <div class="">--</div>
                                        </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                <h2 class="SummaryPage-Option-Title-Text">
                <a class="" href="#"
                title="Themify Builder" rel="nofollow"><span>Themify Builder</span></a>
                </h2>
        </div>
        <a class="LinkBar-More"></a>
</div>

    <div class="SummaryPage-Option-Gallery">
        <div class="ImageCarousel">
            <div class="Carousel-Bounds">
                <div class="ImageCarousel-Offset Carousel-Offset"></div>
                <div class="ImageCarousel-Content Carousel-Content singleItem">
                    <div class="Carousel-List" style="left: 0px;">
                        <div class="ImageCarousel-Item">
                        <a class="ImageCarousel-ItemLink"></a>
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/themify.webp" class="img-fluid ImageCarousel-Image">
                </div>
                <div class="ImageCarousel-Item add">
                <a class="ImageCarousel-AddItem">
                <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                <span>Add Video or Image</span></a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
        <div class="SummaryPage-OptionTabs-Container">
            <div class="SummaryPage-Option-Body">
                <div class="SummaryPage-OptionTabs">
                    <a class="SummaryPage-OptionTabs-Item selected">All
                    <div class="SummaryPage-OptionTabs-Item-Count">1</div></a>
                <a class="SummaryPage-OptionTabs-Item">Cons
                <div class="SummaryPage-OptionTabs-Item-Count">1</div></a>
            <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;">
        </div>
</div>
        <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
            <div class="SummaryPage-OptionTabs-SectionList">
                <div class="SummaryPage-Option-Body-Item con">
                    <div class="SummaryPage-Option-Body-Item-Content section collapsed">
                        <div class="SummaryPage-Option-Body-Item-Avatar">
                            <div class="AvatarWrapper">
                                <div class="">
                                    <a class="Avatar big" href="#">
                                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
                                    </a>
                                </div>
                                               
                            </div>
                        </div>
                
                <div class="SummaryPage-Option-Body-Item-Content-Header">
                    <div class="SummaryPage-Option-Body-Item-Content-Label con">
                        <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top</span>Con</div>
                        <a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                    </div>
                    <div class="SummaryPage-Option-Body-Item-Content-Title">
                        <a class="SummaryPage-Option-Body-Item-Content-Title-Text"><h3>Learning curve</h3></a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="SummaryPage-Option-Footer">
    <div class="SummaryPage-GetItHere">
        <a class="" href="http://themify.me/builder" target="_blank" rel="nofollow noopener">
            <button class="GetItHereButton">
            <div class="GetItHereButton-Icon"></div>
            <span class=""><i class="fa fa-link mr-2"></i>Get it<span class="hide-minimum"> here</span>
            </span>
            </button>
        </a>
    </div>
    <div class="SummaryPage-Vote">
        <button class="SummaryPage-Vote-Button agree">
            <span class="SummaryPage-Vote-Button-Text">
                <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
            </button>
        <button class="SummaryPage-Vote-Button disagree">
        <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
    </button>
    </div>
</div>
</div>
</div>
<!-- Themify ends -->

<!--  Page Builder Sandwich starts -->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title" id="sandwich">
                        <div class="">
                        <div class="SlantScore">
                            <a class="">
                            <div class="">
                                <div class="SlantScore-BadgeContainer">
                                    <div class="SlantScore-Badge">
                                        <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                        <div class="">--</div>
                                        </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                <h2 class="SummaryPage-Option-Title-Text">
                <a class="" href="#"
                title="Page Builder Sandwich" rel="nofollow"><span>Page Builder Sandwich</span></a>
                </h2>
        </div>
        <a class="LinkBar-More"></a>
</div>

    <div class="SummaryPage-Option-Gallery">
        <div class="ImageCarousel">
            <div class="Carousel-Bounds">
                <div class="ImageCarousel-Offset Carousel-Offset"></div>
                <div class="ImageCarousel-Content Carousel-Content singleItem">
                    <div class="Carousel-List" style="left: 0px;">
                        <div class="ImageCarousel-Item">
                        <a class="ImageCarousel-ItemLink"></a>
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/sandwich.jfif" class="img-fluid ImageCarousel-Image">
                </div>
                <div class="ImageCarousel-Item add">
                <a class="ImageCarousel-AddItem">
                <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                <span>Add Video or Image</span></a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
       
<div class="SummaryPage-Option-Footer">
    <div class="SummaryPage-GetItHere">
        <a class="" href="http://themify.me/builder" target="_blank" rel="nofollow noopener">
            <button class="GetItHereButton">
            <div class="GetItHereButton-Icon"></div>
            <span class=""> <i class="fa fa-link mr-2"></i>Get it<span class="hide-minimum"> here</span>
            </span>
            </button>
        </a>
    </div>
    <div class="SummaryPage-Vote">
        <button class="SummaryPage-Vote-Button agree">
            <span class="SummaryPage-Vote-Button-Text">
                <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
            </button>
        <button class="SummaryPage-Vote-Button disagree">
        <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
    </button>
    </div>
</div>
</div>
</div>
<!-- Page Builder Sandwich ends  -->

<!-- velocity page starts -->

<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title" id="velocity">
                         <div class="">
                            <div class="SlantScore">
                                <a class="">
                                    <div class="">
                                        <div class="SlantScore-BadgeContainer">
                                            <div class="SlantScore-Badge">
                                                <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                    <div class="">--</div>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <h2 class="SummaryPage-Option-Title-Text">
                            <a class="" href="#" title="Velocity Page" rel="nofollow">
                            <span>Velocity Page</span></a></h2>
                    </div>
                <a class="LinkBar-More"></a>
            </div>
<div class="SummaryPage-Option-Gallery">
        <div class="ImageCarousel">
            <div class="Carousel-Bounds">
                <div class="ImageCarousel-Offset Carousel-Offset"></div>
                <div class="ImageCarousel-Content Carousel-Content singleItem">
                    <div class="Carousel-List" style="left: 0px;">
                        <div class="ImageCarousel-Item"><a class="ImageCarousel-ItemLink"></a> 
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/velocity.webp" class="img-fluid ImageCarousel-Image" alt="velocity page"> 
                        </div>
                        <div class="ImageCarousel-Item add">
                            <a class="ImageCarousel-AddItem">
                            <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                             <span>Add Video or Image</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="SummaryPage-OptionTabs-Container">
    <div class="SummaryPage-Option-Body">
        <div class="SummaryPage-OptionTabs"><a class="SummaryPage-OptionTabs-Item selected">All<div
        class="SummaryPage-OptionTabs-Item-Count">2</div></a>
        <a class="SummaryPage-OptionTabs-Item">Pros
        <div class="SummaryPage-OptionTabs-Item-Count">2</div>
        </a>
        <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;"></div>
    </div>
    <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
    <div class="SummaryPage-OptionTabs-SectionList">
        <div class="SummaryPage-Option-Body-Item pro">
        <div class="SummaryPage-Option-Body-Item-Content section collapsed">
        <div class="SummaryPage-Option-Body-Item-Avatar">
            <div class="ComboAvatar">
            <div class="ComboAvatar-TooltipLink">
                <div class="ComboAvatar-Image main Avatar singleImage">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
            </div>
        </div>
    </div>
</div>
<div class="SummaryPage-Option-Body-Item-Content-Header">
    <div class="SummaryPage-Option-Body-Item-Content-Label pro">
        <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top
        </span>Pro</div><a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
    </div>
    <div class="SummaryPage-Option-Body-Item-Content-Title">
        <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
        <h3>Made by WordPress Lead Developer</h3>
        </a>
    </div>
</div>
</div>
<div class="SummaryPage-Option-Body-Item pro">
    <div class="SummaryPage-Option-Body-Item-Content section collapsed">
        <div class="SummaryPage-Option-Body-Item-Avatar">
                    <div class="ComboAvatar">
                        <div class="ComboAvatar-TooltipLink">
                            <div class="ComboAvatar-Image main Avatar singleImage">
                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
                        </div>
                    </div>
        </div>
    </div>
            <div class="SummaryPage-Option-Body-Item-Content-Header">
                <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                    <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top
                    </span>Pro</div><a
                    class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                </div>
                <div class="SummaryPage-Option-Body-Item-Content-Title">
                    <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                        <h3>Simple to use</h3>
                    </a>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
</div>
    <div class="SummaryPage-Option-Footer">
        <div class="SummaryPage-GetItHere">
            <a class="" href="http://velocitypage.com/" target="_blank" rel="nofollow noopener">
            <button class="GetItHereButton">
                <div class="GetItHereButton-Icon"></div>
                <span class=""><i class="fa fa-link mr-2" aria-hidden="true"></i>Get it<span class="hide-minimum">here</span>
                </span>
            </button>
            </a>
        </div>
        <div class="SummaryPage-Vote">
            <button class="SummaryPage-Vote-Button agree">
                <span class="SummaryPage-Vote-Button-Text"><i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
            </button>
            <button class="SummaryPage-Vote-Button disagree">
                <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
            </button>
        </div>
    </div>
</div>
</div>
<!-- velocity ends -->

<!-- page builder by site starts -->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="NavHeader-AnchorOffset"></div>
                <div class="SummaryPage-Option-Header-Body">
                    <div class="SummaryPage-Option-Title" id="siteorigine">
                         <div class="">
                            <div class="SlantScore">
                                <a class="">
                                    <div class="">
                                        <div class="SlantScore-BadgeContainer">
                                            <div class="SlantScore-Badge">
                                                <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                    <div class="">--</div>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <h2 class="SummaryPage-Option-Title-Text">
                            <a class="" href="#" title="Velocity Page" rel="nofollow">
                            <span>Page Builder by Site Origin</span></a></h2>
                    </div>
                <a class="LinkBar-More"></a>
            </div>
<div class="SummaryPage-Option-Gallery">
        <div class="ImageCarousel">
            <div class="Carousel-Bounds">
                <div class="ImageCarousel-Offset Carousel-Offset"></div>
                <div class="ImageCarousel-Content Carousel-Content singleItem">
                    <div class="Carousel-List" style="left: 0px;">
                        <div class="ImageCarousel-Item"><a class="ImageCarousel-ItemLink"></a>
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/page-builder.webp" class="img-fluid ImageCarousel-Image">
                        </div>
                        <div class="ImageCarousel-Item add">
                            <a class="ImageCarousel-AddItem">
                            <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                            <span>Add Video or Image</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="SummaryPage-OptionTabs-Container">
    <div class="SummaryPage-Option-Body">
        <div class="SummaryPage-OptionTabs"><a class="SummaryPage-OptionTabs-Item selected">All<div
        class="SummaryPage-OptionTabs-Item-Count">4</div></a>
        <a class="SummaryPage-OptionTabs-Item">Pros
        <div class="SummaryPage-OptionTabs-Item-Count">4</div>
        </a>
        <div class="SummaryPage-OptionTabs-SelectedIndicator" style="transform: translateX(0px); width: 38.4549px;"></div>
    </div>
    <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
    <div class="SummaryPage-OptionTabs-SectionList">
        <div class="SummaryPage-Option-Body-Item pro">
        <div class="SummaryPage-Option-Body-Item-Content section collapsed">
        <div class="SummaryPage-Option-Body-Item-Avatar">
            <div class="ComboAvatar">
            <div class="ComboAvatar-TooltipLink">
                <div class="ComboAvatar-Image main Avatar singleImage">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
            </div>
        </div>
    </div>
</div>
<div class="SummaryPage-Option-Body-Item-Content-Header">
    <div class="SummaryPage-Option-Body-Item-Content-Label pro">
        <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top
        </span>Pro</div><a class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
    </div>
    <div class="SummaryPage-Option-Body-Item-Content-Title">
        <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
        <h3>Open Source</h3>
        </a>
    </div>
</div>
</div>

<div class="SummaryPage-Option-Body-Item pro">
    <div class="SummaryPage-Option-Body-Item-Content section collapsed">
        <div class="SummaryPage-Option-Body-Item-Avatar">
                    <div class="ComboAvatar">
                        <div class="ComboAvatar-TooltipLink">
                            <div class="ComboAvatar-Image main Avatar singleImage">
                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
                        </div>
                    </div>
        </div>
    </div>
            <div class="SummaryPage-Option-Body-Item-Content-Header">
                <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                    <span class="SummaryPage-Option-Body-Item-Content-Label-Top">
                    </span>Pro</div><a
                    class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                </div>
                <div class="SummaryPage-Option-Body-Item-Content-Title">
                    <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                        <h3>Come with a history tool</h3>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="SummaryPage-Option-Body-MoreLink">
        <a class="OptionPreviewList-ReadMore-Label hide-mobile">
        <label for="toggle" class="mr-1">See All</label>
        <i class='fas fa-chevron-down'></i>
        </a>
    </div>
</div>
</div>
</div>
    <div class="SummaryPage-Option-Footer">
        <div class="SummaryPage-GetItHere">
            <a class="" href="http://velocitypage.com/" target="_blank" rel="nofollow noopener">
            <button class="GetItHereButton">
                <div class="GetItHereButton-Icon"></div>
                <span class=""><i class="fa fa-link mr-2" aria-hidden="true"></i>Get it<span class="hide-minimum">here</span>
                </span>
            </button>
            </a>
        </div>
        <div class="SummaryPage-Vote">
            <button class="SummaryPage-Vote-Button agree">
                <span class="SummaryPage-Vote-Button-Text">
                    <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span>
            </button>
            <button class="SummaryPage-Vote-Button disagree">
            <i class="fa fa-thumbs-o-down" style="font-size:18px;vertical-align: middle;"></i>
            </button>
        </div>
    </div>
</div>
</div>
<!-- page builder by site ends -->

<!-- Headway starts -->
<div class="">
    <div class="CardList-Item">
        <div class="SummaryPage-Option-Header">
            <div class="SummaryPage-Option-Header-Body">
                <div class="SummaryPage-Option-Title" id="headway">
                    <div class="">
                        <div class="SlantScore">
                            <a class="">
                                <div class="">
                                    <div class="SlantScore-BadgeContainer">
                                        <div class="SlantScore-Badge">
                                            <span class="SlantScore-Badge-Content SlantScore-Badge-Score">
                                                <div class="">--</div>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <h2 class="SummaryPage-Option-Title-Text">
                    <a class="" href="#" title="Headway Themes" rel="nofollow"><span>Headway Themes</span></a></h2>
                </div>
                    <a class="LinkBar-More"></a>
            </div>
           
            <div class="SummaryPage-Option-Gallery">
                <div class="ImageCarousel">
                            <div class="Carousel-Bounds">
                                <div
                                    class="ImageCarousel-Offset Carousel-Offset">
                                </div>
                                <div class="ImageCarousel-Content Carousel-Content singleItem">
                                    <div class="Carousel-List" style="left: 0px;">
                                        <div class="ImageCarousel-Item">
                                            <a class="ImageCarousel-ItemLink"></a> 
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/headway.webp" class="img-fluid ImageCarousel-Image">
                                        </div>
                                        <div class="ImageCarousel-Item add">
                                            <a class="ImageCarousel-AddItem">
                                            <i class="fas fa-plus-circle Icon plus-circle ImageCarousel-AddItem-Icon"></i>
                                                <span>Add Video or Image</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="SummaryPage-OptionTabs-Container">
                    <div class="SummaryPage-Option-Body">
                        <div class="SummaryPage-OptionTabs">
                            <a class="SummaryPage-OptionTabs-Item selected">All<div class="SummaryPage-OptionTabs-Item-Count">4</div>
                            </a>
                            <a class="SummaryPage-OptionTabs-Item">Experiences<div class="SummaryPage-OptionTabs-Item-Count">
                            1</div>
                            </a>
                            <a class="SummaryPage-OptionTabs-Item">Pros<div class="SummaryPage-OptionTabs-Item-Count">
                            2</div></a>
                            <a class="SummaryPage-OptionTabs-Item">Cons<div class="SummaryPage-OptionTabs-Item-Count">
                            1</div></a>
                            <div class="SummaryPage-OptionTabs-SelectedIndicator"
                                style="transform: translateX(0px); width: 38.4549px;">
                            </div>
                        </div>
                        <div class="mobileMicrocardsCollapsed SummaryPage-OptionTabs-Content noBadge">
                            <div class="SummaryPage-OptionTabs-SectionList">
                                <div class="SummaryPage-Option-Body-Item con">
                                    <div
                                        class="SummaryPage-Option-Body-Item-Content section collapsed">
                                        <div
                                            class="SummaryPage-Option-Body-Item-Avatar">
                                            <div class="ComboAvatar">
                                                <div class="ComboAvatar-TooltipLink">
                                                    <div class="ComboAvatar-Image main Avatar singleImage">
                                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/adden.webp" class="img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="SummaryPage-Option-Body-Item-Content-Header">
                                            <div
                                                class="SummaryPage-Option-Body-Item-Content-Label con">
                                                <span
                                                    class="SummaryPage-Option-Body-Item-Content-Label-Top">Top
                                                </span>Con</div><a
                                                class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                                        </div>
                                        <div
                                            class="SummaryPage-Option-Body-Item-Content-Title">
                                            <a
                                                class="SummaryPage-Option-Body-Item-Content-Title-Text">
                                                <h3>Much better alternatives
                                                    exist</h3>
                                            </a>
                                            </div>
                                            <a class="SummaryPage-Option-Body-Item-Content-SectionBody SummaryPage-Option-Body-Item-Content-Body">
                                            Easier alternatives are Beaver
                                            Builder, Elementor, Divi, and
                                            others. These are easier to use
                                            and more powerful. They also
                                            have more options and more third
                                            party extensions available.
                                        </a>
                                    </div>
                                </div>
                                <div class="SummaryPage-Option-Body-Item pro">
                                    <div
                                        class="SummaryPage-Option-Body-Item-Content section collapsed">
                                        <div
                                            class="SummaryPage-Option-Body-Item-Avatar">
                                            <div class="ComboAvatar">
                                                <div
                                                    class="ComboAvatar-TooltipLink">
                                                    <div class="ComboAvatar-Image main Avatar singleImage">
                                                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/endi.webp" class="img-fluid" alt="Endi Sukaj">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="SummaryPage-Option-Body-Item-Content-Header">
                                            <div class="SummaryPage-Option-Body-Item-Content-Label pro">
                                                <span class="SummaryPage-Option-Body-Item-Content-Label-Top">Top
                                                </span>Pro</div>
                                            <a
                                                class="SummaryPage-Option-Body-Item-Content-Title-MoreLink">•••</a>
                                        </div>
                                        <div class="SummaryPage-Option-Body-Item-Content-Title">
                                            <a class="SummaryPage-Option-Body-Item-Content-Title-Text">
                                                <h3>Excellent community</h3>
                                            </a>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="SummaryPage-Option-Body-MoreLink">
                                <a class="OptionPreviewList-ReadMore-Label hide-mobile">
                                <label for="toggle" class="mr-1">See All</label>
                                <i class='fas fa-chevron-down'></i>
                                </a>
                        </div>
                    </div>
                </div>
                <div class="SummaryPage-Option-Footer">
                    <div class="SummaryPage-GetItHere">
                    <a class="" href="http://headwaythemes.com/" target="_blank" rel="nofollow noopener">
                        <button class="GetItHereButton">
                            <div class="GetItHereButton-Icon"></div>
                                <span class=""><i class="fa fa-link mr-2" aria-hidden="true"></i>Get it<span class="hide-minimum">here</span></span>
                            </button>
                            </a>
                            </div>
                    <div class="SummaryPage-Vote">
                        <button class="SummaryPage-Vote-Button agree">
                            <span class="SummaryPage-Vote-Button-Text">
                                <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>Recommend</span></button>
                        <button class="SummaryPage-Vote-Button disagree">
                        <i class="fa fa-thumbs-o-up mr-2" style="font-size:18px;vertical-align: middle;"></i>
                            <span class="SummaryPage-Vote-Button-Count">2</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="FAB FAB-Floating PrimaryButton" style="left: 585.946px;"><span class="FAB-Label">I Recommend...</span>
        <?xml version="1.0" encoding="iso-8859-1"?>
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
            viewBox="0 0 455 455" style="enable-background:new 0 0 455 455;" xml:space="preserve" class="Icon caret-circle-down-solid FAB-Icon">
        <path d="M227.5,0C101.855,0,0,101.855,0,227.5S101.855,455,227.5,455S455,353.145,455,227.5S353.145,0,227.5,0z M227.5,327.148
            L99.411,199.476l21.178-21.248L227.5,284.791l106.911-106.563l21.178,21.248L227.5,327.148z"/><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
        </svg>
    </a>
                        
<!-- headway ends -->


<!-- post with perticular category starts-->
<!-- <?php if(have_posts()) : while(have_posts()) : the_post();?>
<?php the_content();?>
                    <?php endwhile; else: endif?>

<?php
    $args = array(
        'post_type' => 'post',
        'post_status' => 'publish',
        'category_name' => 'Drag and drop',
         'posts_per_page' => 5,
        'paged' => $paged,
    );

    $_posts= new WP_Query( $args );
    ?>

    <?php if ( $_posts->have_posts() ) :?>
    <?php
        while ( $_posts->have_posts() ) :  $_posts->the_post(); ?>
<div class="card">
    <div class="card-body">
            <h1><?php the_title();?></h1>
            <?php the_excerpt();?>

    </div>
</div>
        <?php endwhile;?>

    <?php endif; ?> -->
<!-- post  with perticular category ends-->



<?php get_footer(); ?>
</section>
</main>