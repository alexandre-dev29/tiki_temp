{$allowRegister='y'}
<link rel="stylesheet" href="themes/css/bootstrap.min.css" />
<link rel="stylesheet" href="themes/css/style.css" />

{include file="navbar_i18n.tpl"}

<!--================ Hero sm Banner start =================-->
<section class="hero-banner hero-banner--sm ">
    <div class="container">
        <div class="hero-banner--sm__content">

            {if !empty($error_register)}
                <h3 class="text-danger">{$error_register}</h3>
            {elseif !empty($success)}
                <h3 class="text-info">{$success}</h3>
            {else}
                <h1>Register</h1>
                    <nav aria-label="breadcrumb" class="banner-breadcrumb">
                    <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Register</li>
                    </ol>
                </nav>
            {/if}
        </div>
    </div>
</section>
<!--================ Hero sm Banner end =================-->
{* $Id: tiki-register.tpl 56565 2015-10-25 03:30:35Z lindonb $ *}


<fieldset>
    {if $user_exists neq true}
        {if !isset($userTrackerHasDescription)}
            <legend>{tr}Register as a new user{/tr}</legend>
        {/if}
    {/if}
    <section class="container">
        {if $allowRegister eq 'y'}
            <div class="row">
                <div class="col-sm-12">
                    {if $userTrackerData}
                        {$userTrackerData}
                    {else}
                        <form action="i18n-register.php{if !empty($prefs.registerKey)}?key={$prefs.registerKey|escape:'url'}{/if}" method="post" name="RegForm">
                            {if $smarty.request.invite}<input type='hidden' name='invite' value='{$smarty.request.invite|escape}'>{/if}
                            {include file="register-form.tpl"}
                            {if $merged_prefs.feature_antibot eq 'y'}{include file='antibot.tpl' form='register'}{/if}
                            <div class="row mb-4">
                                <div class="col-sm-8 col-sm-offset-4">
                                    <input type="hidden" name="register" value="1">
                                    <button class="btn btn-secondary registerSubmit submit" name="register" type="submit">{tr}Register{/tr} <!--i class="fa fa-check"></i--></button>
                                </div>
                            </div>
                        </form>
                    {/if}
                </div>
            </div>
            <div class="col-sm-8 col-sm-offset-4">
                {remarksbox type="note" title="{tr}Note{/tr}"}
                {if $prefs.feature_wiki_protect_email eq 'y'}
                    {assign var=sender_email value=$prefs.sender_email|default:"this domain"|escape:'hexentity'}
                {else}
                    {assign var=sender_email value=$prefs.sender_email|default:"this domain"|escape}
                {/if}
                {tr _0="$sender_email"}If you use an email filter, be sure to add %0 to your accepted list{/tr}
                {/remarksbox}
            </div>
        {/if}

        {if $openid_associate eq 'y'}
            <p>
                {tr}Associate OpenID with an existing Tiki account{/tr}
            </p>
            {include file="modules/mod-login_box.tpl"}
        {/if}
    </section>
</fieldset>
