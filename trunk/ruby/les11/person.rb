require "D:/ruby/lib/ruby/gems/1.8/gems/activerecord-1.15.6/lib/active_record"
ActiveRecord::Base.establish_connection(
                                        :adapter => "mysql",
:host => "localhost",
:username => "vspw",
:password => "",
:database => "vspw"
)
class Person < ActiveRecord::Base
  has_many :adress
end

# ActiveRecord zorgt echt wel voor veel gegevens...
# puts Person.methods.sort

person = Person.new do |p|
  p.voor_naam = "frank"
  p.familie_naam = "franken"
end
 # person.save
 
 puts person

# puts Person.find(:all, :condition => {:voor_naam => "carl"})


