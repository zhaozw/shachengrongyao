-- 自动生成，请勿修改 
-- 时间：2016/10/12
-- 21102585@qq.com

local vip_bossConfig = class("vip_bossConfig")
function vip_bossConfig:ctor()
	self.fields = {"id", "scene_id", "boss_id", "refresh_time", "desc", "drop_list", "point", "vip_lv", "lv_limit", "is_open"}
	self.datas = {
		[1] = {1, 32101, 8501, "30分钟", "BOSS之家1层", {200050,201050,202050,110010,110050}, "42,70", 3, 50, 1},
		[2] = {2, 32101, 8508, "30分钟", "BOSS之家1层", {200022,201022,202022,200023,201023}, "90,26", 3, 50, 1},
		[3] = {3, 32101, 8509, "30分钟", "BOSS之家1层", {200021,201021,202021,200027,201027}, "11,44", 3, 50, 1},
		[4] = {4, 32101, 8502, "60分钟", "BOSS之家1层", {200035,201035,202035,110024,110031}, "63,11", 3, 50, 1},
		[5] = {5, 32101, 8503, "90分钟", "BOSS之家1层", {200039,201039,202039,110025,110040}, "115,44", 3, 50, 1},
		[6] = {6, 32101, 8504, "120分钟", "BOSS之家1层", {200031,201031,202031,110013,110090}, "35,60", 3, 50, 1},
		[7] = {7, 32102, 8505, "90分钟", "BOSS之家2层", {200032,201032,202032,200033,201033}, "61,76", 5, 50, 1},
		[8] = {8, 32102, 8506, "120分钟", "BOSS之家2层", {200030,201030,202030,200035,201035}, "114,44", 5, 50, 1},
		[9] = {9, 32102, 8510, "180分钟", "BOSS之家2层", {200061,201061,202061,200062,201062}, "36,59", 5, 50, 1},
		[10] = {10, 32102, 8507, "240分钟", "BOSS之家2层", {305000,305001,305002,200060,201060}, "89,24", 5, 50, 1},
		[11] = {11, 32103, 8511, "240分钟", "BOSS之家3层", {200075,201075,110163,305013,110222}, "36,25", 7, 50, 1},
		[12] = {12, 32103, 8512, "360分钟", "BOSS之家3层", {200071,201071,202071,200072,201072}, "36,60", 7, 50, 1},
		[13] = {13, 32103, 8513, "360分钟", "BOSS之家3层", {200073,201073,202073,305016,305017}, "91,25", 7, 50, 1},
		[14] = {14, 32103, 8514, "480分钟", "BOSS之家3层", {200070,201070,202070,200076,201076}, "88,61", 7, 50, 1},
		[15] = {15, 32116, 8515, "360分钟", "BOSS之家4层", {110294,305021,305023,200070,201070}, "37,28", 9, 50, 0},
		[16] = {16, 32116, 8516, "480分钟", "BOSS之家4层", {110294,305025,305024,201070,202070}, "89,60", 9, 50, 0},
		[17] = {17, 32116, 8526, "480分钟", "BOSS之家4层", {110320,110294,305025,305024,201070}, "90,26", 9, 50, 0},
		[18] = {18, 32116, 8527, "540分钟", "BOSS之家4层", {110320,110294,305025,201070,202070}, "38,60", 9, 50, 0},

	}
end
return vip_bossConfig