require "spec_helper"

include RSpec

  RSpec.describe Alimento::AliRicCar do
    before :all do
      @ali1 = Alimento::AliRicCar.new("Azúcar", 0.0, 99.8, 0.0)
      @ali2 = Alimento::AliRicCar.new("Arroz", 6.8, 77.7, 0.6)
      @ali3 = Alimento::AliRicCar.new("Lentejas", 23.5, 52.0, 1.4)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Azúcar")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(0.0)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(99.8)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(0.0)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Alimentos Ricos en Carbohidratos")
       expect(@ali2.grupo).to eq("Alimentos Ricos en Carbohidratos")
       expect(@ali3.grupo).to eq("Alimentos Ricos en Carbohidratos")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(314.6)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Arroz:         6.8 77.7 0.6 grupo: Alimentos Ricos en Carbohidratos")
      end
    end

  end

