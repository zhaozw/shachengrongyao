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

-record(charge_conf, {
	key, %% 属性对应的key
	jade, %% 充值元宝
	first_giving, %% 第一次返利
	common_giving, %% 正常返利
	rmb, %% 人民币
	counter_id, %% 计数器id
	time_counter_id, %% 充值计数器ID
	month_day, %% 月卡天数（大于0表示月卡，等于0表示普通充值）
	month_jade %% 月卡领取元宝
}).