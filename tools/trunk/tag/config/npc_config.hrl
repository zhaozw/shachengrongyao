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

-record(npc_conf, {
	id, %% NPCid
	name, %% NPC名称
	sceneId, %% 所在场景
	x, %% x坐标
	y, %% y坐标
	type %% 类型
}).