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
-include("record.hrl").

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

//echo "get_list() ->\n";
//echo "\t[";
//for($i = 2; $i < count($data_array); $i++) {
//    print_value($data_array[$i][0]);
//    if($i != count($data_array) - 1)
//    {
//        echo ", ";
//    }
//}
//echo "].\n\n";

for($i = 2; $i < count($data_array); $i++)
{
    echo "get(";
    print_value("{".$data_array[$i][1].",".$data_array[$i][2]."}");
    echo ") ->\n";
    echo "\t#".$record_name."{\n";

    echo "\t\tattr_base = #attr_base{\n";
    for($j = 0; $j < count($data_array[$i]); $j++)
    {
        $limit = array_search("hp", $data_array[0]);
        $limit1 = array_search("max_res", $data_array[0]);
        if($j >= $limit and $j <= $limit1)
        {
            echo "\t\t\t".$data_array[0][$j]." = ";
            print_value($data_array[$i][$j]);
            if($j != $limit1){
                echo ",";
            }
            else
            {
                echo "\n\t\t}";
            }
            echo "\n";
        }
    };
    echo "\t};\n\n";
}

echo "get(_Key) ->\n";
echo "\t?ERR(\"undefined key from ".$module_name." ~p\", [_Key]).";
?>