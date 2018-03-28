package  {

import flash.display.MovieClip;
import fl.transitions.Tween;
import fl.transitions.easing.*;


	
	public class Portada extends MovieClip{

		public function Portada() {

		//instancias para llamar los tweens en la portada
		var nombre_mcc:Tween = new Tween(nombre_mc,"x",None.easeOut,-208,235,3,true);
		var pra_mcc:Tween = new Tween(pra_mc,"x",None.easeOut,-350,365,3,true);
		var hm_mcc:Tween = new Tween(hm_mc,"x",None.easeOut,-250,25,3,true);
		var siguiente_mcc:Tween  = new Tween(siguiente_btn,"y",Regular.easeInOut,500,375,3,true);
		var logo_mcc:Tween  = new Tween(logo_mc,"x",Bounce.easeInOut,750,600,3,true);
		var maestro_mcc:Tween = new Tween(maestro_mc,"x",None.easeOut,-370,25,3,true);
		
		}

	}
	
}
