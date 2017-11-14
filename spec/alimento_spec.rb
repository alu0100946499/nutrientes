require "spec_helper"
require_relative "../lib/alimento/fuente.rb"
include RSpec


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
  

end
