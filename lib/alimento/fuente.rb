require "alimento/version"

  # Este módulo se ha creado para la asignatura de
  # Lenguajes y Paradigmas de la Programación impartida
  # en la Universidad de la Laguna como práctica,
  # haciendo uso del lenguaje de programación Ruby.
  #
  # Author::    Javier Esteban Pérez Rivas (mailto:alu0100946499@ull.edu.es)
  # Copyright:: Creative Commons
  # License::   Distributes under the same terms as Ruby

  module Alimento

    # Esta clase permite representar un alimento.
    # Se ha incluido el mixin Comparable.

    class  Alimento
      include Comparable    
      
      attr_reader :nombre, :proteinas, :glucidos, :lipidos
      
      # Se guarda el nombre y valor para proteínas, glúcidos y lípidos.
      def initialize(nombre, proteinas, glucidos, lipidos)
        @nombre, @proteinas, @glucidos, @lipidos = nombre.to_s, proteinas, glucidos, lipidos
      end

      # Calcula el valor enérgetico del alimento.
      def val_energ
        @proteinas*4+@glucidos*4+@lipidos*9
      end

      def aibc(array)
        bfr = array.collect{|x| x-array[0]}
        res = array.drop(1).collect!{|x| if x < array[0] then 0.0 else x-array[0] end}.zip(bfr).collect!{|x, y| if x!=0.0 then (x+y)*2.5 else 0.0 end}
        res.reduce(:+)
      end

      # Muestra la información del objeto formateada. Lo convierte a string.
      def to_s
        "%-15s" % ["#{@nombre.capitalize}: "] + "#{@proteinas} #{@glucidos} #{@lipidos}" + " grupo: #{@grupo}"
      end

      # Se define para incluir el mixin comparable
      # Se usa como valor para la comparación el valor energético.
      def <=>(other)
        return nil unless other.is_a?Alimento
        self.val_energ <=> other.val_energ
      end

    end


    class HueLacHel < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Huevos, Lácteos y Helado".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Huevos, Lácteos y Helado"
      end
   
    end


    class CarDer < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Carnes y Derivados".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Carnes y Derivados"
      end

    end

  
    class PesMar < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Pescados y Mariscos".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Pescados y Mariscos"
      end

    end


    class AliGra < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Alimentos Grasos".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Alimentos Grasos"
      end

    end


    class AliRicCar < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Alimentos Ricos en Carbohidratos".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Alimentos Ricos en Carbohidratos"
      end

    end
  
  
    class VerHor < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Verduras y Hortalizas".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Verduras y Hortalizas"
      end

    end

  
    class Frutas < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Frutas".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Frutas"
      end

    end 


    class Bebidas < Alimento

    # Esta clase permite representar alimentos dentro
    # del grupo "Bebidas".
    # Hereda de la clase alimento.

      attr_reader :grupo

      def initialize(nombre, proteinas, glucidos, lipidos)
        super(nombre, proteinas, glucidos, lipidos)
        @grupo = "Bebidas"
      end

    end

  end
