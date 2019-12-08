var s = argument0;
var a = argument1;
var len = array_length_1d(argument1);

switch(len){
	case 0: script_execute(s);break;
	case 1: script_execute(s,a[0]);break;
	case 2: script_execute(s,a[0],a[1]);break;
	case 3: script_execute(s,a[0],a[1],a[2]);break;
	case 4: script_execute(s,a[0],a[1],a[2],a[3]);break;
	case 5: script_execute(s,a[0],a[1],a[2],a[3],a[4]);break;
	case 6: script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5]);break;
	case 7: script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6]);break;

}