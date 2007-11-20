#class TelWoord
#  
#  def initialize
#    super
#  end
#end

# zin die we gebruiken
zin = "wij willen Willem weg wil Willem wijzer worden wij willen Willem weer"

# aanmaken van de lege hash
hash = Hash.new()

# splitten op de spatie
zin.each(' ') {|woord| 
  # verwijderen van de eventuele laatste blanco
  woord.strip!
  # als het woord niet gevonden is: initieren op 1
  if ! hash[woord]
    hash[woord]=1
  else # in het andere geval tellen we er eentje bij
    hash[woord]+=1
  end
}

puts "hash toestand"
puts hash.inspect