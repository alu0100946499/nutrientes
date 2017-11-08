require "spec_helper"
require "/home/usuario/LPP/alimento/lib/alimento.rb"
include RSpec

  RSpec.describe HueLacHel do
    before :all do
      @ali1 = HueLacHel.new("Huevo frito", 14.1, 0.0, 19.5)
      @ali2 = HueLacHel.new("Leche vaca", 3.3, 4.8, 3.2)
      @ali3 = HueLacHel.new("Yogurt", 3.8, 4.9, 3.8)
    end

    describe "#Comprobar que se crea bien" do
      it "Se guarda el nombre" do
        expect(@ali1.nombre).to eq("Huevo frito")
      end
    
      it "Se guarda la cantidad de proteínas" do
        expect(@ali1.proteinas).to eq(14.1)
      end

      it "Se guarda la cantidad de glúcidos" do
        expect(@ali1.glucidos).to eq(0.0)
      end
   
      it "Se guarda la cantidad de lípidos" do
        expect(@ali1.lipidos).to eq(19.5)
      end
    end

    describe "#Comprobar el grupo" do
      it "Se crea bien el grupo" do
       expect(@ali1.grupo).to eq("Huevos, Lácteos y Helado")
       expect(@ali2.grupo).to eq("Huevos, Lácteos y Helado")
       expect(@ali3.grupo).to eq("Huevos, Lácteos y Helado")
      end
    end

    describe "#Comprobar la función val_energ" do
      it "Funciona correctamente" do
        expect(@ali3.val_energ).to eq(69)
      end
    end

    describe "#Comprobar función to_s" do
      it "Funciona correctamente" do
        expect(@ali2.to_s).to eq("Leche vaca:    3.3 4.8 3.2 grupo: Huevos, Lácteos y Helado")
      end
    end

  end

