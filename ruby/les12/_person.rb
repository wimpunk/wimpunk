require "database/address"

class Person < ActiveRecord::Base
  
  def Person.zoek_alle_voornaam vnaam
    Person.find_all_by_first_name vnaam
  end
  
  #  voegt een persoon toe in de tabel 'People', 
  #  indien adres onbekend is wordt een lege adresrecord 
  #  gecreerd in de tabel 'addresses'
  #  een persoon heeft maw altijd een foreign key naar een adres record
  def self.add_person(first, last, adres=nil) 
#TODO
  end
  
  def to_s
  #TODO 
  end
  
end
