<?php
/**
 * Created by PhpStorm.
 * User: Alexandre
 * Date: 3/26/2019
 * Time: 1:30 PM
 */
$inputConfiguration = [
    ['staticKeyFilters' => [
        'email' => 'email',
        'name' => 'text',
        'pass' => 'text',
        'passAgain' => 'text',
    ]]
];

$auto_query_args = [];

require_once('tiki-setup.php');

ask_ticket('register');

$smarty->assign('mid', 'signup.tpl');
$smarty->display('tiki.tpl');