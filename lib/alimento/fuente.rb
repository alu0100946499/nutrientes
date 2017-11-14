require "alimento/version"

  module Alimento

    class  Alimento
      include Comparable    
      
      attr_reader :nombre, :proteinas, :glucidos, :lipidos

      def initialize(nombre, proteinas, glucidos, lipidos)
        @nombre, @proteinas, @glucidos, @lipidos = nombre.to_s, proteinas, glucidos, lipidos
      end

      def val_energ
        @proteinas*4+@glucidos*4+@lipidos*9
      end

      def to_s
        "%-15s" % ["#{@nombre.capitalize}: "] + "#{@proteinas} #{@glucidos} #{@lipidos}" + " grupo: #{@grupo}"
      end

      def <=>(other)
        return nil unless other.is_a?Alimento
        self.val_energ <=> other.val_energ
      end

    end


    class HueLacHel < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Huevos, Lácteos y Helado"
      end
   
    end


    class CarDer < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Carnes y Derivados"
      end

    end

  
    class PesMar < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Pescados y Mariscos"
      end

    end


    class AliGra < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Alimentos Grasos"
      end

    end


    class AliRicCar < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Alimentos Ricos en Carbohidratos"
      end

    end
  
  
    class VerHor < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Verduras y Hortalizas"
      end

    end

  
    class Frutas < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Frutas"
      end

    end 


    class Bebidas < Alimento
      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Bebidas"
      end

    end

  end
