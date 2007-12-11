require "database/person"

class Address < ActiveRecord::Base
  
  def self.add_address(straat, stad, person=nil)
#TODO
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
