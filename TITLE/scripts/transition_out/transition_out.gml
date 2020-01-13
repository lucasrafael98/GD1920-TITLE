global.room_state = "EXITING";
var i = 0;
while(global.alpha >= 0){
	i++;
	show_debug_message(global.alpha);
}

room_goto(argument0);