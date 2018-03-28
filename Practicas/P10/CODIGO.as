package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class CODIGO extends MovieClip {
		private var nombre:String;
		private var calificacion:int;
		private var Vnombre:Array = new Array;
		private var Vcalificacion:Array = new Array;
		private var Resultados:String = "";
		
		private var numero:int;
		private var Vnumeros:Array = new Array;
		private var ResultadosD:String = ""
		private var ResultadosI:String = ""
		private var nullD:String="";
		private var l:int = 0
		public function CODIGO() {
			function Ejercicio1(event:MouseEvent):void{
				gotoAndStop(2)
			
			function home(event:MouseEvent):void{
				gotoAndStop(1)
				e2_btn.addEventListener(MouseEvent.CLICK,Ejercicio2);
				e1_btn.addEventListener(MouseEvent.CLICK,Ejercicio1)
			}
			btn_portada.addEventListener(MouseEvent.CLICK,home);
			
			function guardar(event:MouseEvent):void{
				nombre = txt_nombre.text
				calificacion = Number(txt_calificacion.text)
				
				if(isNaN(calificacion) || Number(nombre)){
					txt_resultados.text = "Problema con la calificación";
					txt_nombre.text = "";
					txt_calificacion.text = "";
					
				}
					Vnombre.push(nombre);
					Vcalificacion.push(calificacion);
					txt_calificacion.text = "";
					txt_nombre.text = "";
					trace(nombre)
					trace(calificacion);
					trace(Vnombre);
					trace(Vcalificacion);
			}
			btn_guardar.addEventListener(MouseEvent.CLICK,guardar);
			
			function imprimir(event:MouseEvent):void{
				for(var i:int = 0; i<Vnombre.length ; i++){
				Resultados = Resultados + Vnombre[i] + " "+ Vcalificacion[i]+"\n";
				}
				txt_resultados.text = String(Resultados);
				}
			btn_imprimir.addEventListener(MouseEvent.CLICK,imprimir);
			}
		e1_btn.addEventListener(MouseEvent.CLICK,Ejercicio1)
		
		function Ejercicio2 (event:MouseEvent):void{
			gotoAndStop(3)
			
		function regresar(event:MouseEvent):void{
			gotoAndStop(1);
			e2_btn.addEventListener(MouseEvent.CLICK,Ejercicio2);
			e1_btn.addEventListener(MouseEvent.CLICK,Ejercicio1)
			}
			btn_portada2.addEventListener(MouseEvent.CLICK,regresar)
		
		function agarrar(event:MouseEvent):void{
			numero = Number(txt_numero.text);
			txt_numero.text = "";
			Vnumeros.push(numero);
		}
		btn_guardar2.addEventListener(MouseEvent.CLICK,agarrar);
		
		function mostrar(event:MouseEvent):void{
		for(var e:int = 0; e < Vnumeros.length; e++){
			ResultadosD = ResultadosD + Vnumeros[e] + ","
			if (Vnumeros[e] == 0) {
				nullD = String(nullD + e + ",");
				}
			/*}
		for(var a:int = Vnumeros.length; a >= l,a--){
			
			}*/
		txt_valorNulo.text = String(ResultadosD + "\n" + "Valor nulo en la posición:" + " " + nullD + " " + "del Array")
		}
		btn_mostrar.addEventListener(MouseEvent.CLICK,mostrar)
		
		}
		
		}
		e2_btn.addEventListener(MouseEvent.CLICK,Ejercicio2);
	}
	
}
}