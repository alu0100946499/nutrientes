module Alimento

  class Plato

    attr_accessor :name, :vegetales, :frutas, :granos, :proteinas, :aceites

    def initialize(name, &block)
      @name = name
      @vegetales = []
      @frutas = []
      @granos = []
      @proteinas = []
      @aceites = []

      if block_given?
        if block.arity == 1
          yield self
        else
          instance_eval(&block)
        end
      end
    end
    
    def ingrediente(grupo, nombre, medida)
      alimento = $alimentos.find{|x| x.nombre == nombre}
      aux = medida.split(" ").first.split("/")
      valor = 0
      if(aux.size > 1)
        valor = aux[0].to_f/aux[1].to_f
      else
        valor = aux[0].to_f
      end
      
      cantidad = $equivalencias[medida.sub("ñ", "n").split(" ").drop(1).each{|x| x.gsub!(/s\z/, "")}.reduce(:+).to_sym].to_f
      cantidad *= valor
     

      if(grupo == "vegetal" || grupo == "vegetales")
        @vegetales << [alimento, cantidad]
      elsif(grupo == "fruta" || grupo == "frutas")
        @frutas << [alimento, cantidad]
      elsif(grupo == "grano" || grupo == "granos" || grupo == "cereal" || grupo == "cereales")
        @granos << [alimento, cantidad]
      elsif(grupo == "proteina" || grupo == "proteína" || grupo == "proteinas" || grupo == "proteínas")
        @proteinas << [alimento, cantidad]
      elsif(grupo == "aceite" || grupo == "aceites")
        @aceites << [alimento, cantidad]
      else
        "#{grupo} no es un grupo de alimento permitido"
      end
    end

  end

end
