require "alimento/version"

  class  Alimento
      
    attr_reader :nombre, :proteinas, :glucidos, :lipidos

    def initialize(nombre, proteinas, glucidos, lipidos)
      @nombre, @proteinas, @glucidos, @lipidos = nombre, proteinas, glucidos, lipidos
    end

  end
