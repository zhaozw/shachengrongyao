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

-record(robot_conf, {
	lv, %% 等级
	career, %% 职业
	weapon, %% 武器
	clothes, %% 衣服
	helmet, %% 头盔
	necklace, %% 项链
	medal, %% 勋章
	bangle, %% 手镯
	ring, %% 戒指
	belt, %% 腰带
	shoes, %% 鞋子
	wing, %% 翅膀
	skill, %% 技能
	event, %% 场景行动类型(单位秒)
	event_stand, %% 站立
	event_run, %% 跑步
	event_kill, %% 等级对应场景信息杀怪
	add_exp %% 时间毫秒，增加的经验
}).