///@description kill floppy, restart room
function kill_floppy() {
	audio_play_sound(snd_lose1, 10, false); // bonk sound!
	global.totalDeaths += 1;
	room_restart();
}
