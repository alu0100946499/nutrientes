require "spec_helper"
require_relative "../lib/alimento.rb"
include RSpec

  RSpec.describe VerHor do
    before :all do
      @ali1 = VerHor.new("Tomate", 1.0, 3.5, 0.2)
      @ali2 = VerHor.new("Cebolla", 1.3, 5.8, 0.3)
      @ali3 = VerHor.new("Calabaza", 1.1, 4.8, 0.1)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Tomate")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(1.0)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(3.5)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(0.2)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Verduras y Hortalizas")
       expect(@ali2.grupo).to eq("Verduras y Hortalizas")
       expect(@ali3.grupo).to eq("Verduras y Hortalizas")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(24.5)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Cebolla:       1.3 5.8 0.3 grupo: Verduras y Hortalizas")
      end
    end

  end
