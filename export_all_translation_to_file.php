<?php
/**
 * Created by PhpStorm.
 * User: Alexandre
 * Date: 2/22/2019
 * Time: 12:28 PM
 */
//die("REMOVE THIS LINE TO USE THE SCRIPT.\n");

//if (! isset($argv[1])) {
//    echo "\nUsage: php export_all_translations_to_file.php\n";
//    echo "Example: php export_translations_to_file.php\n";
//    die;
//}

require_once('tiki-setup.php');
require_once('lang/langmapping.php');
require_once('lib/language/Language.php');
require_once('lib/language/LanguageTranslations.php');
require_once ('svntools.php');


foreach (array_keys($langmapping) as $langCode){
    $language = new LanguageTranslations($langCode);
    try {
        $stats = $language->writeLanguageFile();
        echo sprintf("Wrote %d new strings and updated %d to lang/%s/language.php\n", $stats['new'], $stats['modif'], $language->lang);
    } catch (Exception $e) {
        //die("{$e->getMessage()}\n");
    }
}



if (has_uncommited_changes(".")){
    echo "there is uncommitted changes \n";
   // $return_value = commit("Auto commit for languages");
}else{
    echo "none";
}
