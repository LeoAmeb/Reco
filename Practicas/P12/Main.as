package {
	
	public class Main {
			
			var numero1:uint = Number(Num1.text)
			var numero2:uint = Number(Num2.text)
			var numero3:uint = Number(Num3.text)
			var numero4:uint = Number(Num4.text)
			
		public function Main() {
			
		function calcular (event:MouseEvent):void{
			 Num1.restrict = "0-9"
			 Num2.restrict = "0-9"
			 Num3.restrict = "0-9"
			 Num4.restrict = "0-9"
	
			if(isNaN(Num1.text) || isNaN(Num2.text) || isNaN(Num3.text) || isNaN(Num4.text) || dtxt_resultado.text == "Ingrese solo número"){
				dtxt_resultado.text = "Ingrese solo Números"
			}else{
				
				
				if(numero1%2== 0 && numero2%2 == 0 && numero3%2 == 0 && numero4%2==0){
					dtxt_resultado.text = int(numero1 + numero2 + numero3 + numero4);
				}
				
				
			
		}
		btn_calcular.addEventListener(MouseEvent.CLICK,calcular)
		
		function borrar (event:MouseEvent):void{
			Num1 = ""
			Num2 = ""
			Num3 = ""
			Num4 = ""
			dtxt_resultado.text = ""
		}
		btn_borrar.addEventListener(MouseEvent.CLICK,borrar)
		
		function volver (event:MouseEvent):void{
			gotoAndStop(1);
			}
		btn_regresar.addEventListener(MouseEvent.CLICK,volver)
		
		}

	}
	
}
}