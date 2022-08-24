// Script assets have changed for v2.3.0 see

	function knockback_floppy(){
		if (oHero.knockingback == false){		
		
			global.shake = true;
			oHero.knockingback = true;
			oHero.ySpeed -= 4;
			oHero.alarm[2] = 10; //alarm to kill floppy in 3 seconds

	}
}