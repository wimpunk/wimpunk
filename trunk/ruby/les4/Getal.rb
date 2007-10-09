# getal = Integer.new(3)
# opgave pagina 22
require "les4/format_vraag"

print '1. Graag een getal '
msg = " => het getal %d is "
input = gets.to_i
if (input % 2 == 0)
  result = input / 2
  printf "Het getal #{input} is even, gedeeld door 2 = #{result}\n"
  printf msg + "even, delen door 2 = %d\n", input, input/=2
else 
  result = input+1
  printf "Het getal #{input} is oneven, eentje erbij = #{result}\n"
  printf msg + "oneven, verhoogd met 1 = %d\n", input, input+=1
end

# een lijntje
1.upto(25) do print '-' end

print "\n"+'2. Graag een tweede getal (pos/neg) '
input = gets.to_i
printf "Het getal #{input} is %s dan 0\n", input>0?"groter":"kleiner"

str = FormatVraag.new("3. geef iets")
str.lijn()
puts "Je gaf me <#{str}> als antwoord"

str = FormatVraag.new()
str.lijn()
puts str

getal = FormatVraag.new('graag een tweede getal (pos/neg) ').to_i
printf "getal  #{getal} is %s 0\n", 
getal>0?"groter dan":"kleiner dan of gelijk aan"


