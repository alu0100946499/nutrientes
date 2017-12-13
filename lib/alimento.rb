require "alimento/fuente.rb"
require "alimento/version.rb"

  module Alimento
     $alimentos = [HueLacHel.new("Huevo frito", 14.1, 0.0, 19.5), HueLacHel.new("Leche vaca", 3.3, 4.8, 3.2), HueLacHel.new("Yogurt", 3.8, 4.9, 3.8),
                  CarDer.new("Cerdo", 21.5, 0.0, 6.3), CarDer.new("Ternera", 21.1, 0.0, 3.1), CarDer.new("Pollo", 20.6, 0.0, 5.6),
                  PesMar.new("Bacalao", 17.7, 0.0, 0.4), PesMar.new("Atún", 21.5, 0.0, 15.5), PesMar.new("Salmón", 19.9, 0.0, 13.6),
                  AliGra.new("Aceite de oliva", 0.0, 0.2, 99.6), AliGra.new("Mantequilla", 0.7, 0.0, 83.2), AliGra.new("Chocolate", 5.3, 47.0, 30.0),
                  AliRicCar.new("Azúcar", 0.0, 99.8, 0.0), AliRicCar.new("Arroz", 6.8, 77.7, 0.6), AliRicCar.new("Lentejas", 23.5, 52.0, 1.4), AliRicCar.new("Papas", 2.0, 15.4, 0.1),
                  VerHor.new("Tomate", 1.0, 3.5, 0.2), VerHor.new("Cebolla", 1.3, 5.8, 0.3), VerHor.new("Calabaza", 1.1, 4.8, 0.1),
                  Frutas.new("Manzana", 0.3, 12.4, 0.4), Frutas.new("Platano", 1.2, 21.4, 0.2), Frutas.new("Pera", 0.5, 12.7, 0.3)]
  
    $equivalencias = {"cucharada": 20, cucharadita: 5, cucharón: 240, taza: 150, tacita: 50, tazón: 300, pieza: 100, piezapequena: 50, piezagrande: 200, vaso: 220}    



  end
