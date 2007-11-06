class Dier 
  attr_reader :soort
  attr_accessor :naam
  attr :gezin, true
  
  # constructors gaan in de fout, d'er kan maar 1 constructor
  # zijn.
  def self.opSoort(soort)
    Dier.new(nil,soort)
  end
  # nil is hier een betere oplossing dan gebruik te maken van 
  # een string naar keuze aangezien die misschien wel eens zou 
  # kunnen voorkomen als een naam en/of soort.
  
  def self.opNaam(naam)
    Dier.new(naam,nil)
  end
  
  # def initialize *args
  # argumenten worden opgevangen door args
  # wegens geen controle op de argumenten 
  # is het beter om het zo te doen:
  def initialize naam,soort
    @naam = naam
    @soort = soort
  end
  
  def blaf(character)
  # voorkomen van een lege string bij het blaffen
    print "#{@naam?@naam:'?'} blaft: "
    if @soort != nil && @soort == 'hond'
      3.times{print character}
      puts
      return
    end
    puts ' kan niet blaffen'
  end
  
  #default geluid is een * teken  
  # deze kan niet aangeroepen worden, 
  # enkel de tweede wordt opgeroepen
  def maak_geluid(sterkte)
    #    print "#{@naam} maakt geluid(1): "
    #    if (sterkte > 5)
    #      sterkte.times{print '***'}
    #      puts
    #      return
    #    end
    #    sterkte.times{ print '*'}
    #    puts
    maak_sterkgeluid(sterkte, "*")
  end
  
  #   geluidsteken komt binnen als 2de parameter dus
  # hebben we een aantal mogelijkheden om dit op te lossen
  # - default value
  # - hernoemen
  def maak_sterkgeluid(sterkte, character="*")
    print "#{@naam?@naam:'?'} maakt geluid(2): "
    if (sterkte > 5)
      sterkte.times{print character * 3 }
      puts
      return
    end
    sterkte.times{ print character}
    puts
  end
  
  def to_s
    "#{@naam?@naam:'?'} is een #{@soort?@soort:'?'}"
  end
end

dieren = Dier.opSoort('hond'), Dier.opNaam('Aya'), Dier.new('Xorty', 'hond')
puts '1.'
dieren.each { |een_dier| 
  puts een_dier
}

puts '2.'
dieren.each { |een_dier| 
  een_dier.blaf('#')
}
puts '3.'
dieren.each { |een_dier| 
  een_dier.maak_geluid(6)
}
puts '4.'
dieren.each { |een_dier| 
  een_dier.maak_sterkgeluid(6, '%')
}