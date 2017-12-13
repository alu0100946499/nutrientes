module Alimento

  #Esta clase permite representar un plato

  class Plato

    attr_accessor :name, :vegetales, :frutas, :granos, :proteinas, :aceites
   
    #Se guarda el nombre del plato y se recibe un bloque con los ingredientes
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
    
    #Guarda un alimento dentro de la clase
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

    #Muestra el contenido del plato
    def to_s
      total = 0
      output = @name
      output << "\n#{'=' * @name.size}\n\n"
      output << "Composición nutricional:\n"
      output << "%20s" % "" + "%-10s" % "glúcidos" + "%-10s" %  "proteínas" + "%-10s" % "lípidos" + "%-20s" % "valor energético\n"
      @vegetales.each{ |x, y| output << "%-20s" % x.nombre + "%-10s" % x.glucidos + "%-10s" % x.proteinas + "%-10s" % x.lipidos + "%-20f\n" % (x.val_energ/100*y); total += x.val_energ/100*y}
      @frutas.each{ |x, y| output << "%-20s" % x.nombre + "%-10s" % x.glucidos + "%-10s" % x.proteinas + "%-10s" % x.lipidos + "%-20f\n" % (x.val_energ/100*y); total += x.val_energ/100*y}
      @granos.each{ |x, y| output << "%-20s" % x.nombre + "%-10s" % x.glucidos + "%-10s" % x.proteinas + "%-10s" % x.lipidos + "%-20f\n" % (x.val_energ/100*y); total += x.val_energ/100*y}
      @proteinas.each{ |x, y| output << "%-20s" % x.nombre + "%-10s" % x.glucidos + "%-10s" % x.proteinas + "%-10s" % x.lipidos + "%-20f\n" % (x.val_energ/100*y); total += x.val_energ/100*y}
      @aceites.each{ |x, y| output << "%-20s" % x.nombre + "%-10s" % x.glucidos + "%-10s" % x.proteinas + "%-10s" % x.lipidos + "%-20f\n" % (x.val_energ/100*y); total += x.val_energ/100*y}
      output << "%-41s" % "Valor energético total" + "%20f" % total
      output
    end

  end

end
