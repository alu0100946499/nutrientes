require "spec_helper"
require_relative "../lib/alimento.rb"
include RSpec

  RSpec.describe AliGra do
    before :all do
      @ali1 = AliGra.new("Aceite de oliva", 0.0, 0.2, 99.6)
      @ali2 = AliGra.new("Mantequilla", 0.7, 0.0, 83.2)
      @ali3 = AliGra.new("Chocolate", 5.3, 47.0, 30.0)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Aceite de oliva")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(0.0)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(0.2)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(99.6)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Alimentos Grasos")
       expect(@ali2.grupo).to eq("Alimentos Grasos")
       expect(@ali3.grupo).to eq("Alimentos Grasos")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(479.2)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Mantequilla:   0.7 0.0 83.2 grupo: Alimentos Grasos")
      end
    end

  end

