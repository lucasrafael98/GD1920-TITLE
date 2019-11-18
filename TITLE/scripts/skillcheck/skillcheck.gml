var skill = argument[0];
var dc = argument[1];

switch skill{
	case 1:
		return (obj_player.s_checkpasses) >= dc;
	case 2:
		return (obj_player.s_eavesdropping - obj_player.a_suspicion) >= dc;
	case 3:
		return (obj_player.s_glance - obj_player.a_suspicion) >= dc;
	case 4:
		return (obj_player.s_readlips - obj_player.a_suspicion) >= dc;
}