require "spec_helper"

include RSpec

  RSpec.describe Alimento::Frutas do
    before :all do
      @ali1 = Alimento::Frutas.new("Manzana", 0.3, 12.4, 0.4)
      @ali2 = Alimento::Frutas.new("Plátanos", 1.2, 21.4, 0.2)
      @ali3 = Alimento::Frutas.new("Pera", 0.5, 12.7, 0.3)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Manzana")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(0.3)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(12.4)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(0.4)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Frutas")
       expect(@ali2.grupo).to eq("Frutas")
       expect(@ali3.grupo).to eq("Frutas")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(55.5)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Plátanos:      1.2 21.4 0.2 grupo: Frutas")
      end
    end

  end
