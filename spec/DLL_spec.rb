require "spec_helper"
require_relative "../lib/DLL/fuente.rb"
include RSpec

  RSpec.describe Alimento::DLL do
    before :each do
      @lista = Alimento::DLL.new()
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
        aux = Alimento::DLL::Node.new(2, nil, nil)
        expect(@lista.head).to eq(aux)
        expect(@lista.tail).to eq(aux)
      end
    end

    describe "#Comprobar que se insertan bien los elementos por el final" do
      it "Se inserta bien el 2 y el 5" do
        @lista.insert_tail(2)
        aux = Alimento::DLL::Node.new(2, nil, nil)
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

    describe "#Comprobar que se elimina bien por el frente" do
      it "Se elimina bien" do
        @lista.insert_head(1, 2, 3, 5, 7, 9)
        @lista.erase_head()
        expect(@lista.to_s).to eq("1, 2, 3, 5, 7")
        @lista.erase_head()
        expect(@lista.to_s).to eq("1, 2, 3, 5")
      end
    end  
 
    describe "#Comprobar que se elimina bien por el final" do
      it "Se elimina bien" do
        @lista.insert_head(1, 2, 3, 5, 7, 9)
        @lista.erase_tail()
        expect(@lista.to_s).to eq("2, 3, 5, 7, 9")
        @lista.erase_tail()
        expect(@lista.to_s).to eq("3, 5, 7, 9")
      end
    end

    describe "#Comprobar que la clase DLL es enumerable" do
      before :each do
        @lista.insert_head(1, 3, 2, 7, 5, 9)
      end

      it "Comprobando los métodos collect y map" do
        expect(@lista.collect{ |x| x*x}).to eq([1, 9, 4, 49, 25, 81])
        expect(@lista.map{ |x| x*x}).to eq([1, 9, 4, 49, 25, 81])
      end
 
      it "Comprobando el método count" do
        expect(@lista.count).to eq(6)
      end

      it "Comprobando el método max, min y sort" do
        expect(@lista.max).to eq(9)
        expect(@lista.min).to eq(1)
        expect(@lista.sort).to eq([1, 2, 3, 5, 7, 9])
      end

      it "Comprobando el método include?" do
        expect(@lista.include? 2).to eq(true)
        expect(@lista.include? 4).to eq(false)
      end

      it "Comprobando los métodos detect y find" do
        expect(@lista.detect{ |x| x % 2 == 0}).to eq(2)
        expect(@lista.find{ |x| x % 3 == 0}).to eq(3)
      end

      it "Comprobando el método drop" do
        expect(@lista.drop(1)).to eq([3, 2, 7, 5, 9])
      end

      it "Comprobando el método cycle" do
        sum = 0
        @lista.cycle(2){|x| sum += x}
        expect(sum).to eq(54)
      end

    end	



  end
