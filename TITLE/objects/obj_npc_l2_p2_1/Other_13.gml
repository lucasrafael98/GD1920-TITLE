text = [
    "I\'m not the one you should be talking to.",
	"M-Maybe you\'re looking f-for someone else.",
	"Oh... I really am not the right person for you to be talking to right now.",
	"Please just go away.",
	"Look, go talk to the one guy in this carriage who matters.",
	"I... I\'m not relevant to your interests."
];

rnd = random_range(0,5);

dialogue = [
            createDialogMap(rnd,text[rnd],id,-1,-1)
];