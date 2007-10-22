#!/usr/bin/ruby

require "les4/format_vraag"

cnt = 0
lijst = Array.new()
begin
  lijst[cnt]= FormatVraag.new("Geef getal (eindig met 0)" ).to_i
  cnt+=1;
#  print("cnt=#{cnt} lijst[cnt-1]=#{lijst[cnt-1]}")
end while lijst[cnt-1]!=0

sum = 0;
cnt-=1;
0.upto(cnt) do 
|i|
puts("sum=#{sum} en i=#{i}")
sum+=lijst[i]
end


puts "Ik heb #{cnt} gegevens gelezen en de som is #{sum} en het gemiddelde #{1.0*sum/(cnt)}"

# lijst[cnt] = getal
