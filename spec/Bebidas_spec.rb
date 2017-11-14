require "spec_helper"

include RSpec

  RSpec.describe Alimento::Bebidas do
    before :all do
      @ali1 = Alimento::Bebidas.new("Batido", 15.2, 0.0, 5.9)
      @ali2 = Alimento::Bebidas.new("Refresco", 0.2, 0.5, 70.8)
      @ali3 = Alimento::Bebidas.new("Agua", 0.2, 0.1, 0.4)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Batido")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(15.2)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(0.0)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(5.9)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Bebidas")
       expect(@ali2.grupo).to eq("Bebidas")
       expect(@ali3.grupo).to eq("Bebidas")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ.round(2)).to eq(4.8)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Refresco:      0.2 0.5 70.8 grupo: Bebidas")
      end
    end

  end


