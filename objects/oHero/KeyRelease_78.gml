
audio_stop_sound(global.currentBGM); // shut down curren BGM

if room_next(room) != -1
   {
   room_goto_next();
   //room_restart();
   }
   
   else{
	   room_goto(level_1_1);
}

