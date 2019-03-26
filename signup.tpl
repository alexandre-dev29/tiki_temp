<div class="container-fluid">
    {if !empty($showmsg) && $showmsg eq 'y'}
        <div class="simplebox highlight">
            {$msg|nl2br}
        </div>
    {/if}
    <fieldset>
        {if $user_exists neq true}
            {if !isset($userTrackerHasDescription)}
                <h2 class="text-center text-info mb-5">{tr}Signup{/tr}</h2>
            {/if}
        {/if}
        <div class="col-10 jumbotron" style="margin: 0 auto">
            {user_registration}
        </div>
    </fieldset>
</div>