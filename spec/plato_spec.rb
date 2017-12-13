require_relative "../lib/alimento/fuente.rb"
require_relative "../lib/plato/fuente.rb"
require "spec_helper.rb"
include RSpec

  RSpec.describe Alimento::Plato do
    before :all do
      @lentejas_arroz = Alimento::Plato.new("Lentejas con arroz, salsa de tomate, huevo y platano a la plancha") do
        ingrediente("vegetal", "Tomate", "2 piezas pequeñas")
        ingrediente("fruta", "Platano", "1 pieza")
        ingrediente("cereal", "Arroz", "1 taza")
        ingrediente("proteina", "Lentejas", "1/2 cucharón")
        ingrediente("proteina", "Huevo frito", "1 pieza")
        ingrediente("aceite", "Aceite de oliva", "1/2 cucharada")
      end
    end

    describe "#Se crea bien el plato" do
      it "Tiene su nombre" do
        expect(@lentejas_arroz.name).to eq("Lentejas con arroz, salsa de tomate, huevo y platano a la plancha")
      end
  
    end


  end
