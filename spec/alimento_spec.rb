require 'benchmark'
require "spec_helper"
require_relative "../lib/alimento/fuente.rb"
require_relative "../lib/array/fuente.rb"
include RSpec
include Benchmark

  RSpec.describe Alimento do
    before :all do
      @ali1 = Alimento::Alimento.new("Yogurt", 3.8, 4.9, 3.8)
      @ali2 = Alimento::Alimento.new("Ternera", 21.1, 0.0, 3.1)
      @ali3 = Alimento::Alimento.new("Chocolate", 5.3, 47.0, 30.0)
      @ali4 = Alimento::Alimento.new("Lentejas", 23.5, 52.0, 1.4)
      @ali5 = Alimento::Alimento.new("Tomate", 1.0, 3.5, 0.2)
    end

  describe "# almacenamiento del alimento" do
    it "Se almacena el nombre" do
      expect(@ali1.nombre).to eq("Yogurt")
    end

    it "Se alamacena la cantidad de proteínas" do
      expect(@ali1.proteinas).to eq(3.8)
    end

    it "Se almacena la cantidad de glúcidos" do
      expect(@ali1.glucidos).to eq(4.9)
    end

    it "Se almacena la cantidad de lípidos" do
      expect(@ali1.lipidos).to eq(3.8)
    end
  end
 
   
  describe "# calcular el valor enegético del alimento" do
    it "la cantidad de proteínas, glúcidos y lípidos se multiplican por su valor calórico y se suma" do
     venergetico = @ali1.val_energ
     expect(venergetico).to eq(69)
    end
  end

 
  describe "# mostrar la información formateada" do
    it "Alimento: proteínas glúcidos lípidos" do 
      expect(@ali1.to_s).to eq("Yogurt:        3.8 4.9 3.8 grupo: ")
    end
  end

  describe "#Comparaciones entre dos alimentos basándose en su valor energético" do
    it "El tamate es menor que el yogurt" do
      expect(@ali5 < @ali1).to eq(true)
    end

    it "El yogurt es menor o igual que el chocolate" do
      expect(@ali1 <= @ali3).to eq(true)
    end

    it "Las lentejas son mayores que la ternera" do
      expect(@ali4 > @ali2).to eq(true)
    end

    it "El chocolate es mayor o igual que el chocolate" do
      expect(@ali3 >= @ali3).to eq(true)
    end

    it "El yogurt es igual al yogurt" do
      expect(@ali1 == @ali1)
    end

    it "El yogurt no es igual al chocolate" do
      expect(@ali1 == @ali3).to eq(false)
    end

  end

  describe "#Comprobaciones para calcular el índice glucémico de un alimento" do
    it "Funciona correctamente aibc" do
      a = [5, 1, 2, 3, 4, 6, 7, 8, 9]
      b = [6.7, 6.5, 6.8, 6.9, 7.0]
      expect(@ali1.aibc(a)).to eq(37.5)
      expect(@ali1.aibc(b).round(2)).to eq(1.75)
      expect(@ali1.aibc([6.7, 6.5, 6.8, 6.9, 7.0, 7.1]).round(2)).to eq(3.5)
      expect(@ali1.aibc([4.6, 4.8, 5.3, 5.6, 6.1, 6.5]).round(2)).to eq(21.75)
      expect(@ali1.aibc([4.9, 5.3, 5.9, 6.7, 7.2, 7.6]).round(2)).to eq(34.25)
      expect(@ali1.aibc([6.3, 5.4, 5.6, 5.7, 6.5, 7.4]).round(2)).to eq(2.25)
    end

    it "Funciona correctamente ind_gluc" do
      expect(@ali1.ind_glu("spec/pruebas/prueba1.txt").round(2)).to eq(488.44)
    end


  end

  describe "#Comprobar las funciones de ordenación" do
    before :each do
      @vect = [Alimento::HueLacHel.new("Huevo frito", 14.1, 0.0, 19.5), Alimento::HueLacHel.new("Leche vaca", 3.3, 4.8, 3.2), Alimento::HueLacHel.new("Yogurt", 3.8, 4.9, 3.8),
              Alimento::CarDer.new("Cerdo", 21.5, 0.0, 6.3), Alimento::CarDer.new("Ternera", 21.1, 0.0, 3.1), Alimento::CarDer.new("Pollo", 20.6, 0.0, 5.6),
              Alimento::PesMar.new("Bacalao", 17.7, 0.0, 0.4), Alimento::PesMar.new("Atún", 21.5, 0.0, 15.5), Alimento::PesMar.new("Salmón", 19.9, 0.0, 13.6),
              Alimento::AliGra.new("Aceite de oliva", 0.0, 0.2, 99.6), Alimento::AliGra.new("Mantequilla", 0.7, 0.0, 83.2), Alimento::AliGra.new("Chocolate", 5.3, 47.0, 30.0),
              Alimento::AliRicCar.new("Azúcar", 0.0, 99.8, 0.0), Alimento::AliRicCar.new("Arroz", 6.8, 77.7, 0.6), Alimento::AliRicCar.new("Lentejas", 23.5, 52.0, 1.4), Alimento::AliRicCar.new("Papas", 2.0, 15.4, 0.1),
              Alimento::VerHor.new("Tomate", 1.0, 3.5, 0.2), Alimento::VerHor.new("Cebolla", 1.3, 5.8, 0.3), Alimento::VerHor.new("Calabaza", 1.1, 4.8, 0.1),
              Alimento::Frutas.new("Manzana", 0.3, 12.4, 0.4), Alimento::Frutas.new("Plátanos", 1.2, 21.4, 0.2), Alimento::Frutas.new("Pera", 0.5, 12.7, 0.3)]
    end

    it "La función sort con blucle for funciona correctamente" do
      arr = @vect.for_sort
      cadena = String.new()
      arr.each{|x| cadena << "#{x.nombre}, "}
      expect(cadena).to eq("Tomate, Calabaza, Cebolla, Manzana, Pera, Leche vaca, Yogurt, Papas, Bacalao, Plátanos, Ternera, Pollo, Cerdo, Salmón, Atún, Huevo frito, Lentejas, Arroz, Azúcar, Chocolate, Mantequilla, Aceite de oliva, ")
    end

    it "La función sort con each funciona correctamente" do
      arr = @vect.each_sort
      cadena = String.new()
      arr.each{|x| cadena << "#{x.nombre}, "}
      expect(cadena).to eq("Tomate, Calabaza, Cebolla, Manzana, Pera, Leche vaca, Yogurt, Papas, Bacalao, Plátanos, Ternera, Pollo, Cerdo, Salmón, Atún, Huevo frito, Lentejas, Arroz, Azúcar, Chocolate, Mantequilla, Aceite de oliva, ")
    end

    it "La función sort funciona correctamente" do
      arr = @vect.sort
      cadena = String.new()
      arr.each{|x| cadena << "#{x.nombre}, "}
      expect(cadena).to eq("Tomate, Calabaza, Cebolla, Manzana, Pera, Leche vaca, Yogurt, Papas, Bacalao, Plátanos, Ternera, Pollo, Cerdo, Salmón, Atún, Huevo frito, Lentejas, Arroz, Azúcar, Chocolate, Mantequilla, Aceite de oliva, ")
    end

    it "Informe de tiempo" do
      n = 50000
      Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">media:") do |x|
        tf = x.report("sort:") { n.times{@vect.sort}}
        tt = x.report("each:") { n.times{@vect.each_sort}}
        tu = x.report("for:")  { n.times{@vect.for_sort}}
        [tf+tt+tu, (tf+tt+tu)/3]
      end

    end

  end

  end
