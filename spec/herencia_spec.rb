require "spec_helper"

include RSpec

  RSpec.describe Alimento::HueLacHel do
    before :all do 
      @ali = Alimento::HueLacHel.new("Yogurt", 3.8, 4.9, 3.8)
    end
   
    describe "#Comprobar a que clase pertenece" do
      it "Su clase es HueLacHel" do
        expect(@ali.instance_of?Alimento::HueLacHel).to eq(true)
      end
  
      it "Su clase no es Alimento" do
        expect(@ali.instance_of?Alimento::Alimento).to eq(false)
      end
    end

    describe "#Comprobar el tipo" do
      it "Accede a las funciones de Alimento" do
        expect(@ali.respond_to?:val_energ).to eq(true)
      end

      it "Accede a las funciones de Object" do
        expect(@ali.respond_to?:freeze).to eq(true)
      end

      it "Accede a las funciones de BasicObject" do
        expect(@ali.respond_to?:object_id).to eq(true)
      end
    end

    describe "#Comprobar si pertenece a una jerarquía" do
      it "Es un alimento" do
        expect(@ali.is_a?Alimento::Alimento).to eq(true)
      end

      it "Es un objeto" do
        expect(@ali.is_a?Object).to eq(true)
      end
 
      it "Es un BasicObject" do
        expect(@ali.is_a?BasicObject).to eq(true)
      end
    end

   end


