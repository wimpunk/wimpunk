# getal = Integer.new(3)
# opgave pagina 22
require "les4/format_vraag"

print 'graag een getal '
input = gets.to_i
if (input % 2 == 0)
  result = input / 2
  printf "Het getal #{input} is even, gedeeld door 2 = #{result}\n"
else 
  result = input+1
  printf "Het getal #{input} is oneven, eentje erbij = #{result}\n"
end

puts  '------------------------------'
print 'graag een tweede getal (pos/neg) '
input = gets.to_i
printf "Het getal #{input} is %s dan 0\n#{input>0?groter:kleiner}\n", input>0?"groter":"kleiner"

str = FormatVraag.new("geef iets")
str.lijn()
puts "#{str}"

str = FormatVraag.new()
str.lijn()
puts str

getal = FormatVraag.new('graag een tweede getal (pos/neg) ').to_i
printf "getal  #{getal} is %s 0\n", 
  getal>0?"groter dan":"kleiner dan of gelijk aan"


