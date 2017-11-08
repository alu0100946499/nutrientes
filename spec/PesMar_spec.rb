require "spec_helper"
require_relative "../lib/alimento.rb"
include RSpec

  RSpec.describe PesMar do
    before :all do
      @ali1 = PesMar.new("Bacalao", 17.7, 0.0, 0.4)
      @ali2 = PesMar.new("Atún", 21.5, 0.0, 15.5)
      @ali3 = PesMar.new("Salmón", 19.9, 0.0, 13.6)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Bacalao")
      end

      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(17.7)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(0.0)
      end

      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(0.4)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Pescados y Mariscos")
       expect(@ali2.grupo).to eq("Pescados y Mariscos")
       expect(@ali3.grupo).to eq("Pescados y Mariscos")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(202)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Atún:          21.5 0.0 15.5 grupo: Pescados y Mariscos")
      end
    end

  end

