/// @description Insert description here
// You can write your code in this editor
event_inherited();

my_id = obj_npc_l2_p2_1;
canInteract = true;
colorLevel = 120;
direction = 0;
portrait_index = 0;
voice = snd_sound0;
name = "Random person";
personalSuspicion = 0;

sprites = [S_BHG_DOWN, S_BHL_DOWN, S_BM_DOWN, S_FM_DOWN, S_NM_DOWN, S_OL_DOWN, S_H_DOWN];

sprite_index = sprites[random_range(0,6)];

dc_rl = 2;
dc_ed = 1;
dc_gl = 2;
dc_ch = 1;