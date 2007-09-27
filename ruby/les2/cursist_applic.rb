require "les2/cursist" # hier hoeft de hoofdletter blijkbaar niet

class Cursist_applic
  
  # parallelle assignatie uitproberen :-)
  cursist1, cursist2 = Cursist.new("ikke"), Cursist.new("hij","ruby-deel1")
  
  # het is gerelateerd dus kan het wel op dezelfde lijn
  puts "* Toestand cursist1: "; puts cursist1
  puts "* Toestand cursist2: "; puts cursist2
  
  # in principe zou dit iets als cursist.set_naam("wimpunk") moeten zijn.
  # op voorwaarde natuurlijk dat je eenmethode set_naam definieert
  cursist1.naam = "Wimpunk"
  # code moet geinitialiseerd zijn als een string anders probeert 
  # ruby iets bij nill te tellen
  code = String.new
  3.upto(9) {|i| code+=i.to_s}
  cursist1.code = code
  
  # het is gerelateerd dus kan het wel op dezelfde lijn
  puts "* Toestand cursist1: "; puts cursist1
  puts "* Toestand cursist2: "; puts cursist2
  
  # http://www.nexumoja.org
  # hier kunnen we nog iets van gets zetten
  # in principe kan je beter de vorige string tussen single quotes zetten
  # aangezien er geen subtitutie te vinden is
  
  # Ik vroege me net af of ik ook zo kon becommentarieren
  # eclipse zet het in elk geval in een ander kleurke
  # worden als regular expressions bekeken
  # unicode.org -> ASCII tabel
  
  # pagina 15: nog iets leuks met tabellen - was nog niet uitgeprobeerd
  
  print 'graag antwoord'
  input = gets
  puts input
  if input == 'j'
    puts 'ja'
  end
  input = input.chomp
  puts 'neen' if input == 'n'
end