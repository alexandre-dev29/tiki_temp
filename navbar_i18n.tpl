<!--================Header Menu Area =================-->
<header class="header_area {if $smarty.session.interactive_translation_mode && $smarty.session.interactive_translation_mode=='off'} navbar_fixed {elseif !$smarty.session.interactive_translation_mode} navbar_fixed{/if} " >
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light ">
            <div class="container box_1620">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="https://i18n.tiki.org/" style="color: white; font-weight: bold">Tiki I18n</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav justify-content-end">
                        <li class="nav-item active"><a class="nav-link" href="https://doc.tiki.org/i18n">Documentation</a></li>
                        {if $user}
                            <li class="nav-item"><a class="nav-link" href="tiki-admin.php">Control Panel</a></li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                   aria-expanded="false">Toggle Translation</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link"href="tiki-interactive_trans.php?interactive_translation_mode=on">On</a></li>
                                    <li class="nav-item"><a class="nav-link" href="tiki-interactive_trans.php?interactive_translation_mode=off">Off</a></li>
                                </ul>
                            </li>
                        {/if}
                        <li class="nav-item"><a class="nav-link" href="tiki-index.php?page=contact-us">Contact</a></li>
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
