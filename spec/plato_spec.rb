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

      it "Se muestra correctamente" do
        expect(@lentejas_arroz.to_s).to eq("Lentejas con arroz, salsa de tomate, huevo y platano a la plancha\n=================================================================\n\nComposici\u00F3n nutricional:\n                    gl\u00FAcidos  prote\u00EDnas l\u00EDpidos   valor energ\u00E9tico\n   Tomate              3.5       1.0       0.2       19.800000           \nPlatano             21.4      1.2       0.2       92.200000           \nArroz               77.7      6.8       0.6       515.100000          \nLentejas            52.0      23.5      1.4       377.520000          \nHuevo frito         0.0       14.1      19.5      231.900000          \nAceite de oliva     0.2       0.0       99.6      89.720000           \nValor energ\u00E9tico total                            1326.240000")
      end
  
    end


  end
