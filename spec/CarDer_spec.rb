require "spec_helper"
require "/home/usuario/LPP/alimento/lib/alimento.rb"
include RSpec

  RSpec.describe CarDer do
    before :all do
      @ali1 = CarDer.new("Cerdo", 21.5, 0.0, 6.3)
      @ali2 = CarDer.new("Ternera", 21.1, 0.0, 3.1)
      @ali3 = CarDer.new("Pollo", 20.6, 0.0, 5.6)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Cerdo")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(21.5)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(0.0)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(6.3)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Carnes y Derivados")
       expect(@ali2.grupo).to eq("Carnes y Derivados")
       expect(@ali3.grupo).to eq("Carnes y Derivados")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(132.8)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Ternera:       21.1 0.0 3.1 grupo: Carnes y Derivados")
      end
    end

  end
