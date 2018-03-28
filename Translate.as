package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Translate extends MovieClip {

			public var goto:uint;
		//
		public function FrameInOut() {
			MovieClip(this.parent).currentFrameClip=this;
			frameIntro();
		}
		public function gotoFrame(frame:uint):void {
			if (frame!=MovieClip(this.parent).currentFrame) {
				goto=frame;
				this.gotoAndStop("on");
				this.addEventListener(Event.ENTER_FRAME,avanzaFrame);
			}
		}
		//-----------------------------------------------------
		private function frameIntro():void {
			this.gotoAndStop("out");
			this.addEventListener(Event.ENTER_FRAME,retrocedeFrame);
		}
		private function retrocedeFrame(e:Event):void {
			if (this.currentLabel=="on") {
				this.removeEventListener(Event.ENTER_FRAME,retrocedeFrame);
			} else {
				this.prevFrame();
			}
		}
		private function avanzaFrame(e:Event):void {
			if (this.currentLabel=="out") {
				this.removeEventListener(Event.ENTER_FRAME,avanzaFrame);
				MovieClip(this.parent).gotoAndStop(goto);
			} else {
				this.nextFrame();
			}
		}
	}
}