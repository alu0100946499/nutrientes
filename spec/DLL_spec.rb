require "spec_helper"
require_relative "../lib/DLL.rb"
include RSpec

  RSpec.describe DLL do 
    before :all do
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







  end
