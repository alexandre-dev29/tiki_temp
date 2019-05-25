<?php
/**
 * @package tikiwiki
 */
// (c) Copyright by authors of the Tiki Wiki CMS Groupware Project
//
// All Rights Reserved. See copyright.txt for details and a complete list of authors.
// Licensed under the GNU LESSER GENERAL PUBLIC LICENSE. See license.txt for details.
// $Id: tiki-register.php 66114 2018-04-19 18:54:32Z luciash $

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
$email = $_POST['email'];
$name = $_POST['name'];
$pass = $_POST['pass'];
$passAgain = $_POST['passAgain'];
$register = $_POST['register'];

$user_exist = TikiLib::lib('user')->user_exists($name);
$isEmailExist = TikiLib::lib('user')->get_user_by_email($email);


if(isset($email) && isset($name) && isset($pass)){
    if ($user_exist){
        $smarty->assign('error_register', 'The Username already exist please try another');

    }elseif ($isEmailExist){
        $smarty->assign('error_register', 'The email address already exist please try another');

    }elseif ($pass != $passAgain){
        $smarty->assign('error_register', "the two password don't match please try again with corresponding password");
    } else{
        $register_user = TikiLib::lib('user')->add_user($name, $pass, $email);
        if ($register_user){
            $smarty->assign('success', 'You have been successfully registered so please login using your credential');
        }else{
            $smarty->assign('error_tmp', 'There was an error during the registration please try again ');
        }
    }
}

$smarty->assign('mid', 'signup.tpl');
$smarty->display('tiki.tpl');

//

//echo $name."<br/>";
//echo $user_exist;
