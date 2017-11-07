require "spec_helper"
require_relative "../lib/DLL.rb"
include RSpec

  RSpec.describe DLL do 
    before :each do
      @lista = DLL.new()
    end
  
    describe "#Comprobar que se crea vacía" do
      it "El head está a nil" do 
        expect(@lista.head).to eq(nil)
      end
  
      it "El tail está a nil" do
        expect(@lista.tail).to eq(nil)
      end
    end
    
    describe "#Comprobar que la lista está vacía" do
      it "La lista está vacía" do
        expect(@lista.empty).to eq(true)
      end
    end

    describe "#Comprobar que se insertan bien los elementos por el frente" do
      it "Se insertan bien el 2 y el 5" do
        @lista.insert_head(2)
        aux = DLL::Node.new(2, nil, nil)
        expect(@lista.head).to eq(aux)
        expect(@lista.tail).to eq(aux)
      end
    end

    describe "#Comprobar que se insertan bien los elementos por el final" do
      it "Se inserta bien el 2 y el 5" do
        @lista.insert_tail(2)
        aux = DLL::Node.new(2, nil, nil)
        expect(@lista.head).to eq(aux)
        expect(@lista.tail).to eq(aux)
      end
    end
  
    describe "#Comprobar que se muestra bien la lista" do
      it "Se muestra bien la lista" do
        @lista.insert_head(1, 2, 3, 5, 7, 9)
        expect(@lista.to_s).to eq("1, 2, 3, 5, 7, 9")
      end
    end 



  end
