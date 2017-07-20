%%%-------------------------------------------------------------------
%%% @author zhengsiying
%%% @doc
%%%		自动生成文件，不要手动修改
%%% @end
%%% Created : <?php date_default_timezone_set("PRC"); echo_meta_date(); ?>
%%%-------------------------------------------------------------------
<?php
$module_name = $target_file_name . "_config";
$record_name = $target_file_name . "_conf";
foreach($data_array as $table)
{
    $data_array = $table;
    break;
}
?>

-module(<?php echo $module_name; ?>).

-include("common.hrl").
-include("config.hrl").

-compile([export_all]).

<?php
function print_value($value)
{
    if(is_string($value) && $value[0] != '{')
    {
        if (preg_match("/[\x7f-\xff]/", $value)) {  //判断字符串中是否有中文
            echo "xmerl_ucs:to_utf8(\"".$value."\")";
        } else {
            echo "<<\"".$value."\">>";
        }
    }
    elseif(is_array($value))
    {
        $data = str_replace("\r", '', $value["string"]);
        $data = str_replace("\n", '', $data);
        echo $data;
    }
    else
    {
        echo $value;
    }
}

echo "get_list() ->\n";
echo "\t[";
for($i = 2; $i < count($data_array); $i++) {
    print_value($data_array[$i][0]);
    if($i != count($data_array) - 1)
    {
        echo ", ";
    }
}
echo "].\n\n";

$type_array = array();
for($i = 2; $i < count($data_array); $i++)
{
    $type = $data_array[$i][1];
    $scene_id = $data_array[$i][0];
    if(!$type_array[$type])
    {
        $type_array[$type] = array();
    }
    array_push($type_array[$type], $scene_id);
}

$num = 0;
$count = count($type_array);
foreach($type_array as $k => $v)
{
    ++$num;
    echo "get_group_list_conf(", $k, ") ->\n";
    echo "\t[";
    for($j = 0; $j < count($v); $j++)
    {
        echo $module_name.":get(";
        print_value($v[$j]);
        echo ")";
        if($j != count($v) - 1)
        {
            echo ", ";
        }
    }

    if($num >= $count)
    {
        echo "].\n\n";
    }
    else
    {
        echo "];\n";
    }
}

$type_array = array();
for($i = 2; $i < count($data_array); $i++)
{
    $type = $data_array[$i][1];
    $scene_id = $data_array[$i][0];
    if(!$type_array[$type])
    {
        $type_array[$type] = array();
    }
    array_push($type_array[$type], $scene_id);
}

$num = 0;
$count = count($type_array);
foreach($type_array as $k => $v)
{
    ++$num;
    echo "get_group_list(", $k, ") ->\n";
    echo "\t[";
    for($j = 0; $j < count($v); $j++)
    {
        print_value($v[$j]);
        if($j != count($v) - 1)
        {
            echo ", ";
        }
    }

echo "];\n";
}
echo "get_group_list(_Key) ->\n";
echo "\t[]. \n";

for($i = 2; $i < count($data_array); $i++)
{
    echo "get(";
    print_value($data_array[$i][0]);
    echo ") ->\n";
    echo "\t#".$record_name."{\n";
    for($j = 0; $j < count($data_array[$i]); $j++)
    {
        echo "\t\t".$data_array[0][$j]." = ";
        print_value($data_array[$i][$j]);
        if($j != count($data_array[$i]) - 1){
            echo ",";
        }
        echo "\n";
    }
    echo "\t};\n\n";
}
echo "get(_Key) ->\n";
echo "\t?ERR(\"undefined key from ".$module_name." ~p\", [_Key]).";
?>