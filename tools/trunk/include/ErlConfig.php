<?php

class MyTestClass
{
    public static $ConfAll1;
    public static $ConfAll = array(
"active_drop",
"active_instance",
"active_remind",
"active_reward",
"active_service",
"active_service_merge",
"active_service_merge_shop",
"active_service_merge_type",
"active_service_shop",
"active_service_type",
"activity_list",
"arena_reward",
"arena_shop",
"artifact_attr",
"artifact_exp",
"bag",
"bag_drop",
"buff",
"button_tips",
"buy_power_need",
"cell",
"charge",
"city_boss",
"city_officer",
"counter",
"decompose",
"decompose_stren",
"drop_modulus",
"equips_baptiz_change_jade",
"equips_baptize",
"equips_baptize_lock",
"equips_baptize_qian",
"equips",
"equips_forge",
"equips_plus",
"equips_quality",
"equips_smelt",
"equips_soul",
"equips_soul_plus",
"equips_stren",
"equips_suit",
"equips_type",
"everyday_sign",
"examination",
"fighting",
"forge_consume",
"function",
"function_notice",
"fusion",
"gem_upgrade",
"gift_download",
"goods",
"goods_map",
"goods_type",
"guild_active",
"guild",
"guild_donation",
"guild_shop",
"holidays_active",
"hook_scene",
"hook_star_reward",
"instance",
"instance_dragon",
"instance_dragon_native",
"instance_dragon_weeken",
"instance_single",
"log_type",
"loop_notice",
"lottery_box",
"lottery_coin",
"lottery",
"luck",
"luckdraw_exchange",
"mail",
"mark",
"medal",
"monster_attack_reward",
"monster",
"monster_growth",
"mounts",
"mystery_shop",
"notice",
"npc",
"package_goods",
"player_attr",
"player_upgrade",
"random_first_name",
"random_last_name",
"random_monster",
"robot_account",
"robot",
"sale_sort",
"scene_activity",
"scene",
"scene_merge",
"scene_transport",
"sensitive_word",
"shop",
"shop_once",
"skill",
"skill_tree",
"special_drop",
"special_drop_type",
"stren_rate",
"szww_reward",
"task_complete",
"task",
"taskreward",
"transfer",
"treasure",
"ui_function",
"vip_boss",
"vip",
"wander_shop",
"wing",
"wing_mapping",
"word_map",
"world_boss",
"world_boss_reward",
"worship_goods"
    );
    
    
    public static function is_create_erl($tablename=''){
       return in_array($tablename,self::$ConfAll);
    }
}

?>