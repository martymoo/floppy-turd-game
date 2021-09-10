//audio_stop_all();
// audio_stop_sound(global.currentBGM);


global.currentBGM = currentBGM;

if (!audio_is_playing(currentBGM) ){ //if no sound is already playing...
	audio_play_sound(currentBGM, 1, true); // room soundtrack!
}

