require "les9/_cursus"


def print_lijst lijst
  lijst.each {|curs| puts curs}
end

class Cursus_applic
  cursussen = [
  Cursus.new('Ruby - 1','Jan', 18.15, 10),
  Cursus.new('Ruby - 2','Piet', 18.15, 8),
  Cursus.new('Java - 1','Els', 14, 15),
  Cursus.new('Java - 2','Jan', 14, 10),
  Cursus.new('Java - 3','Piet', 18.15, 8)
  ]
  
  puts '5. Alle Java-cursussen, daarna alle andere cursussen: '
  java_cursussen,andere_cursussen = cursussen.partition{|cursus|
    cursus.naam?('Java')
  }
  print_lijst java_cursussen
  print_lijst andere_cursussen
  
  puts '6. Alle cursussen gesorteerd op cursus naam: '
  print_lijst cursussen.sort
  
  # TODO: hier ook print_lijst voor gebruiken.
  puts '7. Alle cursussen voorafgegaan met de index: '
  cursussen.each_index { |key| puts "#{key} : #{cursussen[key]}"}
  
end






















