{$allowRegister='y'}
<link rel="stylesheet" href="themes/css/bootstrap.min.css" />
<link rel="stylesheet" href="themes/css/style.css" />

{include file="navbar_i18n.tpl"}

<!--================ Hero sm Banner start =================-->
<section class="hero-banner hero-banner--sm ">
    <div class="container">
        <div class="hero-banner--sm__content">
            <h1>Register</h1>
            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Register Us</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<!--================ Hero sm Banner end =================-->
{* $Id: tiki-register.tpl 56565 2015-10-25 03:30:35Z lindonb $ *}
{if !empty($showmsg) && $showmsg eq 'y'}
    <div class="simplebox highlight">
        {$msg|nl2br}
    </div>
{/if}
<fieldset>
    {if $user_exists neq true}
        {if !isset($userTrackerHasDescription)}
            <legend>{tr}Register as a new user{/tr}</legend>
        {/if}
    {/if}
    <section class="container">
        {user_registration}
    </section>
</fieldset>
