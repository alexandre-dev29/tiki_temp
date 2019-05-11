<link rel="stylesheet" href="themes/css/bootstrap.min.css" />
<link rel="stylesheet" href="themes/css/style.css" />

{include file="navbar_i18n.tpl"}

<!--================ Hero sm Banner start =================-->
<section class="hero-banner hero-banner--sm ">
    <div class="container">
        <div class="hero-banner--sm__content">
            <h1>Contact Us</h1>
            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<!--================ Hero sm Banner end =================-->


<!-- ================ contact section start ================= -->
<div class="section-margin">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-lg-3 mb-4 mb-md-0">
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-home"></i></span>
                    <div class="media-body">
                        <h3>Montréal, Québec </h3>
                        {*<p>Santa monica bullevard</p>*}
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-email"></i></span>
                    <div class="media-body">
                        <h3><a href="mailto:admin@axelmwenze.com">admin@axelmwenze.com</a></h3>
                        <p>Send us your query anytime!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-lg-9">
                {if !$sent}
                    <form class="form-contact contact_form" method="post" action="tiki-contact.php">
                        {ticket}
                        <input type="hidden" name="to" value="{$prefs.contact_user|escape}">
                        {if $prefs.contact_priority_onoff eq 'y'}
                            <div class="form-group row">
                                <label for="priority" class="col-sm-3 col-form-label">{tr}Priority:{/tr}</label>
                                <div class="col-sm-9">
                                    <select id="priority" name="priority" class="form-control">
                                        <option value="1" {if $priority eq 1}selected="selected"{/if}>1 -{tr}Lowest{/tr}-</option>
                                        <option value="2" {if $priority eq 2}selected="selected"{/if}>2 -{tr}Low{/tr}-</option>
                                        <option value="3" {if $priority eq 3}selected="selected"{/if}>3 -{tr}Normal{/tr}-</option>
                                        <option value="4" {if $priority eq 4}selected="selected"{/if}>4 -{tr}High{/tr}-</option>
                                        <option value="5" {if $priority eq 5}selected="selected"{/if}>5 -{tr}Very High{/tr}-</option>
                                    </select>
                                </div>
                            </div>
                        {/if}
                        {if $user eq ''}
                            <div class="form-group row">
                                <label for="from" class="col-sm-3 col-form-label">{tr}Your email{/tr}:</label>
                                <div class="col-sm-9">
                                    <input type="text" id="from" name="from" value="{$from}" class="form-control" placeholder="Enter your email">
                                </div>
                            </div>
                        {/if}
                        <div class="form-group row">
                            <label for="subject" class="col-sm-3 col-form-label">{tr}Subject:{/tr}</label>
                            <div class="col-sm-9">
                                <input type="text" id="subject" name="subject" value="{$subject}" class="form-control" placeholder="Enter your Subject">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="body" class="col-sm-3 col-form-label">{tr}Message:{/tr}</label>
                            <div class="col-sm-9">
                                {textarea col="30" rows="20" name="body" id="body" class="form-control" _simple='y' _toolbars='n' placeholder="Enter your message "}{$body}{/textarea}
                            </div>
                        </div>
                        {if $prefs.feature_antibot eq 'y' && $user eq ''}
                            {include file='antibot.tpl' td_style="form"}
                        {/if}
                        <div class="form-group text-center">
                            <input type="submit" class="button button-contactForm" name="send" value="{tr}Send{/tr}">
                        </div>
                    </form>
                {/if}
            </div>
        </div>
    </div>

</div>

<!-- ================ contact section end ================= -->

<script src="themes/js/main.js" type="text/javascript"></script>