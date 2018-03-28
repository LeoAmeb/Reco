package  {
	import flash.display.MovieClip;
	public class Codigo extends MovieClip {
		// se crean dos variables para almacenar las areas
			private var areaCirculo:Number;
			private var areaTriangulo:Number;
			
		public function AreaCirculo (val:Number) {
			//se recibe un dato por parametro y despues se multiplica por PI para calcular el area
			var radio:Number = val;
			areaCirculo = 3.1416 * (radio * radio);
			
		}
		public function Circulo(): String{
			return areaCirculo.toString();
			
		}
			public function AreaTriangulo (val2:Number, val3:Number) {
			//se recibe un dato por parametro y despues se multiplica por PI para calcular el area
			var basee:Number = val2;
			var alturaa:Number = val3;
			areaTriangulo = (basee*alturaa)/2;
			
		}
		public function Triangulo(): String{
			return areaTriangulo.toString();
			
		}

	}
	
}
