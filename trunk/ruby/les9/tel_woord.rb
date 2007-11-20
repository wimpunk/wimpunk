class Woord_Teller
  
  def initialize zin
    @zin = zin
  end
  
  def split
    # aanmaken van de lege hash
    hash = Hash.new()
    
    # splitten op de spatie
    @zin.each(' ') {|woord| 
      # verwijderen van de eventuele laatste blanco
      woord.strip!
      # als het woord niet gevonden is: initieren op 1
      hash[woord]=0 if ! hash[woord]
      hash[woord]+=1
    }
    
    return hash
  end
  
  def to_s
    self.split.inspect
  end
  
  def inspect
    myhash = self.split
    str = @zin.concat("\n")
    myhash.each {|a| str << sprintf("woord %s komt %i keer voor\n", a[0], a[1])}
    return str
  end
  
end

# zin die we gebruiken
telwoord = Woord_Teller.new "wij willen Willem weg wil Willem wijzer worden wij willen Willem weer"
puts telwoord.split.inspect
puts telwoord

puts "Resultaat inspect"
puts telwoord.inspect



