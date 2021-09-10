// Back to level picker
global.totalDeaths += 1;

// shut down curren BGM
audio_stop_sound(global.currentBGM);

//go back to level map
room_goto(r_levelPicker);