-- 自动生成，请勿修改 
-- 时间：2016/10/12
-- 21102585@qq.com

local monster_areaConfig = class("monster_areaConfig")
function monster_areaConfig:ctor()
	self.fields = {"id", "scene_id", "name", "point"}
	self.datas = {
		[1] = {1, 20001, "精英弓箭手", "25,65"},
		[2] = {2, 20001, "精英卫士", "52,43"},
		[3] = {3, 20001, "精英红猪卫士", "24,23"},
		[4] = {4, 20001, "精英黑猪卫士", "85,19"},
		[5] = {5, 20001, "精英僵尸", "83,65"},
		[6] = {6, 20001, "铁甲尸王", "32,67"},
		[7] = {7, 20001, "奥玛教主", "63,45"},
		[8] = {8, 20001, "祖玛教主", "23,22"},
		[9] = {9, 20001, "邪恶触龙", "99,18"},
		[10] = {10, 20001, "牛魔王", "95,73"},
		[11] = {11, 20002, "铁甲尸王", "33,36"},
		[12] = {12, 20003, "奥玛教主", "22,15"},
		[13] = {13, 20004, "祖玛教主", "18,13"},
		[14] = {14, 20005, "邪恶触龙", "20,23"},
		[15] = {15, 20006, "牛魔王", "44,33"},
		[16] = {16, 20007, "魔龙教主", "18,11"},
		[17] = {17, 20008, "精英红猪卫士", "57,61"},
		[18] = {18, 20008, "精英黑猪卫士", "72,50"},
		[19] = {19, 20008, "精英僵尸", "89,28"},
		[20] = {20, 20008, "精英僵尸法师", "50,8"},
		[21] = {21, 20008, "精英僵尸牧师", "15,31"},
		[22] = {22, 20008, "精英猪卫", "46,37"},
		[23] = {23, 20008, "魔龙教主", "55,42"},
		[24] = {24, 20009, "精英邪龙", "25,19"},
		[25] = {25, 20009, "精英死神", "25,19"},
		[26] = {26, 20009, "熔岩之主", "29,25"},
		[27] = {27, 20010, "精英弓箭手", "38,19"},
		[28] = {28, 20010, "奥玛教主", "22,15"},
		[29] = {29, 20011, "精英卫士", "20,15"},
		[30] = {30, 20011, "祖玛教主", "22,15"},
		[31] = {31, 20012, "精英红猪卫士", "21,19"},
		[32] = {32, 20012, "铁甲尸王", "25,20"},
		[33] = {33, 20100, "弓箭守卫", "12,12"},
		[34] = {34, 20100, "大刀守卫", "12,12"},
		[35] = {35, 20101, "鹿", "45,18"},
		[36] = {36, 20101, "稻草人", "33,6"},
		[37] = {37, 20101, "钉钩猫", "21,7"},
		[38] = {38, 20201, "持斧骷髅", "4,40"},
		[39] = {39, 20201, "骷髅战士", "23,26"},
		[40] = {40, 20201, "邪恶骷髅", "30,10"},
		[41] = {41, 20202, "伏地僵尸", "18,8"},
		[42] = {42, 20202, "僧侣僵尸", "34,5"},
		[43] = {43, 20202, "僵尸道士", "34,32"},
		[44] = {44, 20203, "伏地僵尸", "23,10"},
		[45] = {45, 20203, "铁甲尸王", "30,6"},
		[46] = {46, 20203, "僧侣僵尸", "24,17"},
		[47] = {47, 20203, "僵尸道士", "34,12"},
		[48] = {48, 20204, "火焰奥玛", "27,23"},
		[49] = {49, 20204, "奥玛卫士", "18,16"},
		[50] = {50, 20204, "奥玛头目", "19,31"},
		[51] = {51, 20205, "火焰奥玛", "41,43"},
		[52] = {52, 20205, "奥玛卫士", "34,18"},
		[53] = {53, 20205, "奥玛头目", "26,33"},
		[54] = {54, 20206, "火焰奥玛", "29,13"},
		[55] = {55, 20206, "奥玛卫士", "38,19"},
		[56] = {56, 20206, "奥玛头目", "20,20"},
		[57] = {57, 20206, "奥玛教主", "22,14"},
		[58] = {58, 20207, "钢甲钳虫", "18,14"},
		[59] = {59, 20207, "蜈蚣", "25,22"},
		[60] = {60, 20207, "毒蜂", "44,14"},
		[61] = {61, 20208, "钢甲钳虫", "9,21"},
		[62] = {62, 20208, "蜈蚣", "20,36"},
		[63] = {63, 20208, "毒蜂", "51,15"},
		[64] = {64, 20209, "钢甲钳虫", "10,11"},
		[65] = {65, 20209, "蜈蚣", "13,20"},
		[66] = {66, 20209, "毒蜂", "24,15"},
		[67] = {67, 20209, "蛇蝎", "27,21"},
		[68] = {68, 20209, "邪恶触龙", "14,12"},
		[69] = {69, 20210, "变异蛆虫", "20,35"},
		[70] = {70, 20210, "红猪卫士", "32,28"},
		[71] = {71, 20211, "变异蛆虫", "38,24"},
		[72] = {72, 20211, "红猪卫士", "31,8"},
		[73] = {73, 20211, "黑猪卫士", "16,27"},
		[74] = {74, 20211, "蛇蝎", "44,15"},
		[75] = {75, 20212, "蛇蝎", "8,17"},
		[76] = {76, 20212, "变异蛆虫", "25,26"},
		[77] = {77, 20212, "红猪卫士", "25,15"},
		[78] = {78, 20212, "黑猪卫士", "9,26"},
		[79] = {79, 20212, "白猪王", "34,16"},
		[80] = {80, 20213, "祖玛战将", "17,20"},
		[81] = {81, 20213, "祖玛弓手", "19,38"},
		[82] = {82, 20214, "祖玛战将", "23,25"},
		[83] = {83, 20214, "祖玛弓手", "26,17"},
		[84] = {84, 20214, "祖玛卫士", "30,44"},
		[85] = {85, 20215, "祖玛战将", "24,11"},
		[86] = {86, 20215, "祖玛弓手", "11,14"},
		[87] = {87, 20215, "祖玛卫士", "26,30"},
		[88] = {88, 20215, "祖玛教主", "38,24"},
		[89] = {89, 20216, "钢牙恶蛛", "28,16"},
		[90] = {90, 20216, "天狼恶蛛", "45,23"},
		[91] = {91, 20217, "钢牙恶蛛", "24,9"},
		[92] = {92, 20217, "天狼恶蛛", "28,45"},
		[93] = {93, 20217, "月魔毒蛛", "49,39"},
		[94] = {94, 20218, "钢牙恶蛛", "15,18"},
		[95] = {95, 20218, "天狼恶蛛", "20,12"},
		[96] = {96, 20218, "月魔毒蛛", "22,15"},
		[97] = {97, 20218, "双头恶魔", "30,18"},
		[98] = {98, 20218, "赤月老魔", "28,15"},
		[99] = {99, 20403, "至尊魔龙", "22,14"},
		[100] = {100, 20233, "钢牙恶蛛", "26,24"},
		[101] = {101, 20233, "月魔毒蛛", "48,36"},
		[102] = {102, 20233, "天狼恶蛛", "45,18"},
		[103] = {103, 20234, "金色螃蟹", "48,18"},
		[104] = {104, 20234, "深海玄龟", "25,15"},
		[105] = {105, 20234, "狂暴鳄鱼", "28,38"},
		[106] = {106, 20235, "冥蛇女妖", "16,10"},
		[107] = {107, 20235, "狂暴鳄鱼", "24,5"},
		[108] = {108, 20235, "深海玄龟", "29,15"},
		[109] = {109, 20236, "金色螃蟹", "36,17"},
		[110] = {110, 20236, "深海玄龟", "40,33"},
		[111] = {111, 20236, "狂暴鳄鱼", "54,14"},
		[112] = {112, 20236, "冥海领主", "43,19"},
		[113] = {113, 20237, "堕落兽人", "27,26"},
		[114] = {114, 20237, "蛮荒力士", "50,27"},
		[115] = {115, 20238, "堕落兽人", "28,25"},
		[116] = {116, 20238, "蛮荒力士", "33,43"},
		[117] = {117, 20238, "野蛮领袖", "58,37"},
		[118] = {118, 20238, "虹魔教主", "44,36"},
		[119] = {119, 20239, "蛮荒力士", "24,24"},
		[120] = {120, 20239, "野蛮领袖", "46,25"},
		[121] = {121, 20239, "牛魔王", "35,25"},
		[122] = {122, 22001, "龙柱", "30,28"},
		[123] = {123, 32001, "骷髅精灵", "41,37"},
		[124] = {124, 32001, "铁甲尸王", "21,36"},
		[125] = {125, 32001, "奥玛教主", "32,36"},
		[126] = {126, 32001, "邪恶触龙", "45,13"},
		[127] = {127, 32002, "白野猪王", "27,25"},
		[128] = {128, 32002, "祖玛教主", "41,32"},
		[129] = {129, 32002, "巨型双头恶魔", "29,40"},
		[130] = {130, 32001, "巨型多角虫", "6,33"},
		[131] = {131, 32002, "赤月老魔", "60,29"},
		[132] = {132, 32001, "巨型钳虫", "14,37"},
		[133] = {133, 31003, "炽炎蛛王", "29,27"},
		[134] = {134, 31004, "火龙", "27,34"},
		[135] = {135, 32101, "骷髅精灵", "39,70"},
		[136] = {136, 32101, "铁甲尸王", "65,35"},
		[137] = {137, 32101, "奥玛教主", "49,60"},
		[138] = {138, 32101, "邪恶触龙", "63,11"},
		[139] = {139, 32101, "巨型多角虫", "15,40"},
		[140] = {140, 32101, "巨型钳虫", "76,35"},
		[141] = {141, 32102, "白野猪王", "23,39"},
		[142] = {142, 32102, "祖玛教主", "22,39"},
		[143] = {143, 32102, "赤月老魔", "56,40"},
		[144] = {144, 32102, "巨型双头恶魔", "86,55"},
		[145] = {145, 32103, "冥蛇女妖", "100,37"},
		[146] = {146, 32103, "冥海领主", "38,57"},
		[147] = {147, 32103, "虹魔教主", "97,30"},
		[148] = {148, 32103, "牛魔王", "94,27"},
		[149] = {149, 32003, "冥蛇女妖", "30,29"},
		[150] = {150, 32003, "冥海领主", "57,11"},
		[151] = {151, 32004, "虹魔教主", "34,34"},
		[152] = {152, 32004, "牛魔王", "44,17"},
		[153] = {153, 20243, "雪山赤狐", "15,27"},
		[154] = {154, 20243, "雪山白狐", "33,54"},
		[155] = {155, 20243, "雪魔", "11,52"},
		[156] = {156, 20244, "雪山赤狐", "10,15"},
		[157] = {157, 20244, "雪山白狐", "20,38"},
		[158] = {158, 20244, "雪魔", "37,17"},
		[159] = {159, 20244, "冰封雪魔", "8,49"},
		[160] = {160, 20245, "雪山赤狐", "13,15"},
		[161] = {161, 20245, "雪山白狐", "31,10"},
		[162] = {162, 20245, "雪魔", "26,47"},
		[163] = {163, 20245, "四翼魔帝", "42,47"},
		[164] = {164, 32108, "火龙BOSS", "62,39"},
		[165] = {165, 32116, "冰封雪魔", "63,43"},
		[166] = {166, 32116, "四翼魔帝", "38,65"},
		[167] = {167, 32117, "冰封雪魔", "41,22"},
		[168] = {168, 32117, "四翼魔帝", "30,38"},
		[169] = {169, 32116, "魔龙统领", "84,20"},
		[170] = {170, 32116, "魔龙教主", "19,50"},
		[171] = {171, 32119, "魔龙统领", "49,46"},
		[172] = {172, 32120, "魔龙教主", "45,22"},
		[173] = {173, 32121, "魔龙统领", "44,20"},
		[174] = {174, 32121, "魔龙教主", "37,13"},
		[175] = {175, 32118, "魔龙猪卫", "38,16"},
		[176] = {176, 32118, "魔龙狼人", "51,15"},
		[177] = {177, 32119, "荒领魔龙", "22,26"},
		[178] = {178, 32119, "魔龙狼人", "45,14"},
		[179] = {179, 32120, "荒领魔龙", "22,16"},
		[180] = {180, 32120, "魔龙狼人", "31,26"},
		[181] = {181, 32120, "魔龙猪卫", "7,15"},

	}
end
return monster_areaConfig
