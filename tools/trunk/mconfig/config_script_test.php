<?php
/**
 * Created by PhpStorm.
 * User: zhengsiying
 * Date: 2015/4/18
 * Time: 16:11
 */
define('ROOT', str_replace('\\', '/', realpath(dirname(__FILE__).'/../')));
define('INCLUDE_DIR', ROOT.'/include/');
include(INCLUDE_DIR . "header.php");



define('DEFAULT_ERL_TEMP_FILE', ROOT."/mconfig/config_erl_template.php");
define('DEFAULT_HRL_TEMP_FILE', ROOT."/mconfig/config_hrl_template.php");
define('DEFAULT_LUA_TEMP_FILE',ROOT."/mconfig/config_Lua_template.php");

//$input_table = isset($argv[1]) ? $argv[1] : "";
$input_table = isset($_GET['name']) ? $_GET['name'] : "";
$input_table1 = strchr($input_table, ".xml", true);
if($input_table1)
{
    $input_table = $input_table1;
}
$module_name = $input_table . "_config";
$output_hrl = ROOT . "/tag/config/hrl/" . $module_name . ".hrl";
$output_erl = ROOT . "/tag/config/erl/" . $module_name . ".erl";
$output_lua = ROOT . "/tag/config/" . $input_table . "Config.lua";

main($input_table, $output_hrl, $output_erl,$output_lua);
function main($input_table, $output_hrl, $output_erl,$output_lua){
    if($input_table == ""){
        exit("input is empty!\n");
    }
    echo "make config ", $input_table, "\n";
    $input_file = ROOT."/data/config/".$input_table.".xml";
    $table_info = rdExcel_XML($input_file);
    $table_info_server = removeNullAttr($table_info, ROW_INDEX_SERVER);
	$table_info_client = removeNullAttr($table_info, ROW_INDEX_CLIENT);
	//$table_info_client = makeMaps($table_info_client);
	make_lua($table_info_client, $input_table, $output_lua);
	make_hrl($table_info_server, $input_table, $output_hrl);
	make_erl($table_info_server, $input_table, $output_erl);
}

function make_lua($arr_data, $input_table, $output_lua){
	$tpl_file = ROOT."/mconfig/".$input_table."_lua_template.php";
	if(!file_exists($tpl_file))
	{
		echo "lua tpl_file is empty!\n";
        
		$tpl_file = DEFAULT_LUA_TEMP_FILE;
	}
	//print_r($arr_data);
    $content = parseTemplate($tpl_file, $arr_data, $input_table);
	//print_r($content);
    writeFile($output_lua, $content);
}

function make_hrl($arr_data, $input_table, $output_hrl){
	$tpl_file = ROOT."/mconfig/".$input_table."_hrl_template.php";
	if(!file_exists($tpl_file))
	{
		$tpl_file = DEFAULT_HRL_TEMP_FILE;
	}
    $content = parseTemplate($tpl_file, $arr_data, $input_table);
    writeFile($output_hrl, $content);
}

function make_erl($arr_data, $input_table, $output_erl){
	$tpl_file = ROOT."/mconfig/".$input_table."_erl_template.php";
	if(!file_exists($tpl_file))
	{
		$tpl_file = DEFAULT_ERL_TEMP_FILE;
	}
    $content = parseTemplate($tpl_file, $arr_data, $input_table);
    writeFile($output_erl, $content);
}
?>