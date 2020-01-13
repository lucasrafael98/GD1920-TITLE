//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	text = [
        "You approach this man who doesn't seem to be sitting anywhere and... what is that smell? Is he dead or something?",
        ["\"Hello? Are you alright.\""],
        "\"Yes, if you would just wait a minute.\" ...and you thought you\'d gotten used to these smells. This isn\'t unpleasant so much as it smells like someone actually died inside. The man in front of you seems incredibly sickly, as if his skin was in decay. You... can\'t actually understand what\'s  going on with him.",
        ["\"The hell... are you a zombie or something?\"","\"What are you doing in here?\""],
        "\"Uh, no? I\'ve had some skin problems since I was a kid. Oh, you\'re the conductor.\"",
        "\"Oh, I just really had to go.\" He notices you\'re the conductor. \"Sorry, didn\'t want to make your job harder.",
        "He makes an awkwardly long pause. \"Well... this is what you wanted, right?\"",
        ["\"...What?\""],
        "\"Right, the pass. Whoops...\" he chuckles and produces a pass.",
        "His passport states he\'s eighty, but the man in front of you doesn\'t look a day older than 40, despite his \"skin problem\".",
        ["\"Expat coming home?\"","\"How old are you?\"","\"Alright, everything\'s cleared. Thank you.\""],
        "\"Yes. It\'s been too long since I\'ve been there, but I suppose the war gave me a very good excuse to.\"",
        "\"Why, eighty years old. Oh, I can never seem to look the part in these things. Doctors tell me it\'s this weird skin, doesn\'t let me age properly.\" Who the hell is this guy? You don\'t really have an excuse to let him out but... you can\'t even process this shit properly.",
        "Nothing out of the ordinary. You can\'t think of any questions to ask."
    ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[2],[-1]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[4,5],[-1,-1]),
            createDialogMap(4,text[4],id,6,-1),
            createDialogMap(5,text[5],id,6,-1),
            createDialogMap(6,text[6],id,7,-1),
            createDialogMap(7,text[7],id,[8],[-1]),
            createDialogMap(8,text[8],id,-1,[skillBranch_alt, id, 8, 1, dc_ch, 9, 13]),
            createDialogMap(9,text[9],id,10,-1),
            createDialogMap(10,text[10],id,[11,12,-1],[-1,-1,-1]),
            createDialogMap(11,text[11],id,10,-1),
            createDialogMap(12,text[12],id,10,-1),
            createDialogMap(13,text[13],id,-1,-1)
    ];
}