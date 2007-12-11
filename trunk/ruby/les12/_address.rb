require "les12/_person"

class Address < ActiveRecord::Base
  has_many :people
  def self.voeg_toe(straat, stad, person=nil)
      Address.new(:straat => straat, :stad =>stad, :person =>person).save
  end

  def self.zelfde_adres(id)
 #TODO
  end
   def self.zelfde_adres_vs1(id)
 #TODO
  end
  
  def self.zelfde_adres_vs2(id)
  #TODO
  end

  def to_s
  #TODO
    "????"
  end
end
