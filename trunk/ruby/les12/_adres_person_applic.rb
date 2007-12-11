require "D:/ruby/lib/ruby/gems/1.8/gems/activerecord-1.15.6/lib/active_record"
require "les12/_person"
require "les12/_address"

class AdresPersonApplic

ActiveRecord::Base.establish_connection(
:adapter  => "mysql",
:host     => "localhost",
:username => "vspw",
:password => "",
:database => "vspw"
)

#main opgave_1
puts Person.voeg_toe('Jan', 'Janssens')
adres = Address.new(:straat=>'Heldenplein', :stad=>'Leuven')
adres.save
puts Person.voeg_toe('Karl', 'Dierkens', adres);

#main opgave_1 - uitbreiding_2
jantje = Person.new(:first_name=>'Jantje', :last_name=>'Janssens')
jantje.bewaar_adres(Address.new(:straat=>'Krekelweg', :stad=>'Ledeberg'))
puts jantje


#main opgave_2
person = Person.voeg_toe('jan_2', 'janssens_2')
puts Address.voeg_toe('turfsteeg', 'heule')
#adresrecord wordt verwijderd en nieuwe referentie komt in de plaats:
puts Address.voeg_toe('turfsteeg_2', 'heule_2', person)

#main opgave_3
#zoek via SQuirreL eerst zelf een adres id op in de database
#puts Address.zelfde_adres(een adres id})

## main opgave_4
## voeg een persoon met een gekend adres toe in de database
## ken nadien een andere persoon toe aan dat adres
adres = Address.new({:straat => 'straat', :stad => 'stad'})
adres.save
person = Person.new({:first_name=>'leona', :address_id=>adres.id})
person.save
puts person

end