require "spec_helper"
require "/home/usuario/LPP/alimento/lib/alimento.rb"
include RSpec


  RSpec.describe Alimento do
    before :all do
      @ali = Alimento.new('Yogurt', 3.8, 4.9, 3.8)
  end

  describe "# almacenamiento del alimento" do
    it "Se almacena el nombre" do
      expect(@ali.nombre).to eq('Yogurt')
    end

    it "Se alamacena la cantidad de proteínas" do
      expect(@ali.proteinas).to eq(3.8)
    end

    it "Se almacena la cantidad de glúcidos" do
      expect(@ali.glucidos).to eq(4.9)
    end

    it "Se almacena la cantidad de lípidos" do
      expect(@ali.lipidos).to eq(3.8)
    end
  end

end
