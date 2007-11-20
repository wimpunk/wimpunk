#class TelWoord
#  
#  def initialize
#    super
#  end
#end

zin = "wij willen Willem weg wil Willem wijzer worden wij willen Willem weer"

puts zin
hash = Hash.new()

zin.each(' ') {|woord| 
  woord.strip!
  if hash[woord]
  puts "#{woord} gevonden\n"
    hash[woord]+=1
  else
  puts "#{woord} niet gevonden\n"
    hash[woord]=1
  end

}


puts "hash toestand"
puts hash.inspect