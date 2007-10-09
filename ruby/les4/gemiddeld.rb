require "les4/format_vraag" 

i = 0
som = 0
lijst = Array.new()
begin
  max = i 
  lijst[i] = FormatVraag.new("Geef getal (eindig met 0)").to_i
  i+=1
end while lijst[max]!=0
max-=1 # de laatste 0 schrappen we


print "ik las #{max} getallen: "
0.upto(max) do 
|i| print lijst[i]
som+=lijst[i]
print ", " if i<max
end

print " en de som is #{som} en het gemiddeld #{(som*1.0)/max}"
