require "les9/_cursus"

class Cursus_applic
  cursussen = [Cursus.new('Ruby - 1','Jan', 18.15, 10),
  Cursus.new('Ruby - 2','Piet', 18.15, 8),
  Cursus.new('Java - 1','Els', 14, 15),
  Cursus.new('Java - 2','Jan', 14, 10),
  Cursus.new('Java - 3','Piet', 18.15, 8)
  ]
  
  puts '5. Alle Java-cursussen, daarna alle andere cursussen: '
  ruby_cursussen,andere_cursussen = cursussen.partition{|cursus|
    cursus.naam?('Java')
  }
  ruby_cursussen.each {|curs| puts curs}
  andere_cursussen.each {|curs| puts curs}
  
  
  puts '6. Alle cursussen gesorteerd op cursus naam: '
  mine = cursussen.sort
  mine.each { |curs| puts curs }

  
  puts '7. Alle cursussen voorafgegaan met de index: '
  
end






















