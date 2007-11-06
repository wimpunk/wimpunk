class Dier 
  attr_reader :soort
  attr_accessor :naam
  attr :gezin, true
  
  def initialize soort
    @soort = soort
  end
  def initialize naam
    @naam = naam
  end
  def initialize *args
  # argumenten worden opgevangen door args
    @naam = args[0]
    @soort = args[1]
  end
  
  def blaf(character)
    print "#{@naam} blaft: "
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
    print "#{@naam} maakt geluid(1): "
    if (sterkte > 5)
      sterkte.times{print '***'}
      puts
      return
    end
    sterkte.times{ print '*'}
    puts
  end
  
  #   geluidsteken komt binnen als 2de parameter
  def maak_geluid(sterkte, character="*")
    print "#{@naam} maakt geluid(2): "
    if (sterkte > 5)
      sterkte.times{print character * 3 }
      puts
      return
    end
    sterkte.times{ print character}
    puts
  end
  
  def to_s
    "#{naam} is een #{soort}"
  end
end

dieren = Dier.new('hond'), Dier.new('Aya'), Dier.new('Xorty', 'hond')
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
  een_dier.maak_geluid(6, '%')
}