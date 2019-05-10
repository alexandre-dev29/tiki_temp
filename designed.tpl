<style>
    .container-std{
        margin: 0 !important;
        padding : 0 !important;
    }
    .middle{
        padding: 0 !important;
        margin: 0 !important;
    }
    .container-fluid{
        margin: 0 !important;
        padding : 0 !important;
    }
    .row-middle{
        margin: 0 !important;
    }
    #row-middle{
        margin: 0 !important;
    }
</style>

<link rel="stylesheet" href="themes/css/bootstrap.min.css" />
<link rel="stylesheet" href="themes/css/style.css" />

<!--================Header Menu Area =================-->
<header class="header_area ">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container box_1620">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="index.html" style="color: white; font-weight: bold">Tiki I18n</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav justify-content-end">
                        <li class="nav-item active"><a class="nav-link" href="index.html">Documentation</a></li>
                        <li class="nav-item"><a class="nav-link" href="feature.html">Control Panel</a></li>
                        <li class="nav-item"><a class="nav-link" href="pricing.html"></a>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Toogle Translation</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link"href="tiki-interactive_trans.php?interactive_translation_mode=on">On</a></li>
                                <li class="nav-item"><a class="nav-link" href="tiki-interactive_trans.php?interactive_translation_mode=off">Off</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                    </ul>

                    <ul class="navbar-right">
                        <li class="nav-item">
                            {module  module="login_box" mode=popup show_user_name='n' show_user_avatar='y' color='#ffffff' nobox='y' decorations='n' class="button button-header bg"}
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================Header Menu Area =================-->


<main class="side-main">
    <!--================ Hero sm Banner start =================-->
    <section class="hero-banner mb-30px">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="hero-banner__img">
                        <img class="img-fluid" src="img/lang.png" alt="">
                    </div>
                </div>
                <div class="col-lg-6 pt-5">
                    <div class="hero-banner__content">
                        <h1 class="text-center">{tr}Welcome to the Tiki i18n{/tr}</h1>
                        <p>{tr}Tiki's multilingual features are already very good. It is possible to manage a site in 35+ languages. It is also possible to manage a multilingual site with a single Tiki install. However, there are still a lot of ideas to improve.{/tr}</p>
                        <a class="button bg offset-3" href="#">{tr}Become a translator{/tr}</a>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ Hero sm Banner end =================-->

    <!--================ Feature section start =================-->
    <section class="section-margin">
        <div class="container">
            <div class="section-intro pb-85px text-center">
                <h2 class="section-intro__title">{tr}Benefits to become a translator{/tr}</h2>
                <p class="section-intro__subtitle">{tr}As a translator, you’ll spend your days using your language skills to help people understand documents, carry on conversations, and generally understand what’s happening in an international setting{/tr}</p>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card card-feature text-center text-lg-left mb-4 mb-lg-0">
                <span class="card-feature__icon">
                  <i class="ti-package"></i>
                </span>
                            <h3 class="card-feature__title">{tr}A Multicultural Experience{/tr}</h3>
                            <p class="card-feature__subtitle">{tr}Being a translator means you’ll be a person who straddles multiple worlds. That’s going to put you in touch with people from all over the world -- learning about different ways of life, perhaps trying new foods, and experiencing the nuances of culture that people who simply travel to other countries don’t always get. In short, you’ll be a cultural ambassador.{/tr}</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card card-feature text-center text-lg-left mb-4 mb-lg-0">
                <span class="card-feature__icon">
                  <i class="ti-mouse-alt"></i>
                </span>
                            <h3 class="card-feature__title">{tr}An Interesting Life{/tr}</h3>
                            <p class="card-feature__subtitle">{tr}If you’re working as a translator online or you’re translating documents, you’ll get the luxury of working wherever you want. Spend your days in a lounge chair on the beach or in a bustling cafe -- it’s all up to you. If you’re translating for people one-on-one, there’s a very good chance you’re working with tourists, business professionals, government agents or other people who are traveling to and fro.{/tr}</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card card-feature text-center text-lg-left mb-4 mb-lg-0">
                <span class="card-feature__icon">
                  <i class="ti-headphone-alt"></i>
                </span>
                            <h3 class="card-feature__title">{tr}Your Brain Works Better than Others’{/tr}</h3>
                            <p class="card-feature__subtitle">{tr}As someone who’s proficient in more than one language, you can consider yourself among the smarter people on the planet. Numerous studies have found that bilingual people’s brains are more active than people who speak only one language. More specifically, bilinguals have an increased "executive function," suggests an article in Psychology Today, meaning they’re better at focusing, prioritizing, analyzing and accessing working memory.{/tr}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ Feature section end =================-->

    <!--================ Offer section start =================-->
    <section class="section-margin">
        <div class="container">
            <div class="section-intro pb-85px text-center">
                <h2 class="section-intro__title">{tr}How It Works{/tr}</h2>
                <p class="section-intro__subtitle">{tr}There is only little step for you to become a translator for tiki{/tr}</p>
            </div>

            <div class="row">
                <div class="col-lg-5">

                    <div class="row offer-single-wrapper">
                        <div class="col-lg-6 offer-single">
                            <div class="card offer-single__content text-center">
                  <span class="offer-single__icon">
                    <i class="ti-pencil-alt"></i>
                  </span>
                                <h4>{tr}Signup and login{/tr}</h4>
                                <p>{tr}Just Go to the {/tr}<a class="text-info" href="register.php" >{tr}register page</a> and signup and then login{/tr}</p>
                            </div>
                        </div>

                        <div class="col-lg-6 offer-single">
                            <div class="card offer-single__content text-center">
                  <span class="offer-single__icon">
                    <i class="ti-ruler-pencil"></i>
                  </span>
                                <h4>{tr}choose your language{/tr}</h4>
                                <p>{tr}After login go to the bottom of the page and choose your language{/tr}</p>
                            </div>
                        </div>
                    </div>

                    <div class="row offer-single-wrapper">
                        <div class="col-lg-6 offer-single">
                            <div class="card offer-single__content text-center">
                  <span class="offer-single__icon">
                    <i class="ti-cut"></i>
                  </span>
                                <h4>{tr}Toogle Interactive translation{/tr}</h4>
                                <p>{tr}On the top bar just hover the toogle translation link and the choose On {/tr} </p>
                            </div>
                        </div>

                        <div class="col-lg-6 offer-single">
                            <div class="card offer-single__content text-center">
                  <span class="offer-single__icon">
                    <i class="ti-light-bulb"></i>
                  </span>
                                <h4>{tr}Strart Translation{/tr}</h4>
                                <p>{tr}You are Done, now you can start translate :) {/tr}</p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-6">
                    <div class="offer-single__img">
                        <img class="img-fluid" src="img/offer.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ Offer section end =================-->
    <!--================ Offer section start =================-->
    <section class="section-margin">
        <div class="container">
            <div class="section-intro pb-85px text-center">
                <h2 class="section-intro__title">{tr} Don't Understand ? {/tr}</h2>
                <p class="section-intro__subtitle">{tr} Here is a video to make you understand {/tr}</p>
            </div>

            <div class="row">
                <div class="col-lg-10">
                    <div class="offer-single__img">
                        <h1 class="text-center display-4">Here will go the video</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ Offer section end =================-->
</main>

<script src="themes/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="themes/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="themes/js/main.js" type="text/javascript"></script>