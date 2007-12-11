require "les12/_address"

class Person < ActiveRecord::Base
  belongs_to  :address
  def Person.zoek_alle_voornaam vnaam
    Person.find_all_by_first_name vnaam
  end
  
  #  voegt een persoon toe in de tabel 'People', 
  #  indien adres onbekend is wordt een lege adresrecord 
  #  gecreerd in de tabel 'addresses'
  #  een persoon heeft maw altijd een foreign key naar een adres record
  def self.voeg_toe(first, last, adres=nil) 
    person = Person.new(:voor_naam => first,
    :familie_naam => last,
    :email => "",
    :address => adres)
    person.save
    
    return person
  end
  
  def bewaar_adres(adres)
    address = adres
  end
  
  def to_s
    "#{voor_naam} #{familie_naam}"
  end
  
end
