/// @desc Start dialogs

// Initialize the system
dialog_init();
intro();

// Queue up a bunch of dialogs we're demoing
// This also shows that the system correctly handles interleaving branching dialogues
dialog_begin(DIALOG_INTRO_0);
dialog_begin(DIALOG_INTRO_1);
dialog_begin(DIALOG_INTRO_2);
dialog_begin(DIALOG_INTRO_3);
dialog_begin(DIALOG_INTRO_4);
dialog_begin(DIALOG_INTRO_5);
dialog_begin(DIALOG_INTRO_6);
dialog_begin(DIALOG_INTRO_7);
dialog_begin(DIALOG_INTRO_8);
dialog_begin(DIALOG_INTRO_9);
dialog_begin(DIALOG_INTRO_10);
dialog_begin(DIALOG_INTRO_11);