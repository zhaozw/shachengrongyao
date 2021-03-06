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

-record(transfer_conf, {
	id, %% 传送阵id
	from_scene, %% 所在场景
	from_pos, %% 所在坐标
	to_scene, %% 目标场景
	to_pos, %% 目标坐标
	lv_limit, %% 等级限制
	guild_lv_limit, %% 行会等级限制
	power_limit, %% 战力限制
	order_num, %% 传送位置
	direction %% 传送方向
}).