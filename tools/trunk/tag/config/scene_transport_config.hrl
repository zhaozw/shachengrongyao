%%%-------------------------------------------------------------------
%%% @author zhengsiying
%%% @doc
%%%        自动生成文件，不要手动修改
%%% @end
%%% Created : 2016/10/12
%%%-------------------------------------------------------------------

%% ===================================================================
%% record
%% ===================================================================

-record(scene_transport_conf, {
	key, %% key
	scene_id, %% 场景id
	x, %% x坐标
	y, %% y坐标
	lv_limit, %% 等级限制
	spend_limit %% 消耗限制
}).