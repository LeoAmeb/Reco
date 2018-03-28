package {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	//
	public class Main extends MovieClip {

		public var currentFrameClip:MovieClip;

		public function Main() {
			this.btn_inicio.addEventListener(MouseEvent.CLICK,gotoFrame);
			this.btn_juegos.addEventListener(MouseEvent.CLICK,gotoFrame);
			this.btn_practicas.addEventListener(MouseEvent.CLICK,gotoFrame);
			this.btn_multimedia.addEventListener(MouseEvent.CLICK,gotoFrame);
			this.stop();
		}
		private function gotoFrame(e:MouseEvent):void {
			switch (e.currentTarget) {
				case btn_inicio :
					currentFrameClip.gotoFrame(1);
					break;
				case btn_juegos :
					currentFrameClip.gotoFrame(2);
					break;
				case btn_practicas :
					currentFrameClip.gotoFrame(3);
					break;
				case btn_multimedia :
					currentFrameClip.gotoFrame(4);
					break;
			}
		}
	}
}