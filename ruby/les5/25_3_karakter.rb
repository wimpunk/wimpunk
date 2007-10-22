#!/usr/bin/ruby

require "les4/format_vraag"

kar1 = FormatVraag.new("Geef een karakter" ).to_s.downcase[0,1]
kar2 = FormatVraag.new("Geef nog een karakter" ).to_s.downcase[0,1]

if kar1 > kar2 
  tempkar = kar1
  kar1 = kar2
  kar2 = tempkar
end

puts("kar1 = #{kar1}")
puts("kar2 = #{kar2}")

kar1.upto(kar2) do
|i| puts "#{i} #{i[0]}"
end

