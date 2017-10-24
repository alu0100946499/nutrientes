require "alimento/version"

  class  Alimento
      
    attr_reader :nombre, :proteinas, :glucidos, :lipidos

    def initialize(nombre, proteinas, glucidos, lipidos)
      @nombre, @proteinas, @glucidos, @lipidos = nombre.to_s, proteinas, glucidos, lipidos
    end

    def val_energ
      @proteinas*4+@glucidos*4+@lipidos*9
    end

    def write
      "%-15s" % ["#{@nombre.capitalize}: "] + "#{@proteinas} #{@glucidos} #{@lipidos}"
    end

  end
