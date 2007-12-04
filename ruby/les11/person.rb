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
  def to_s
  "#{voor_naam} #{familie_naam} #{adress_id}"
  end
end

# ActiveRecord zorgt echt wel voor veel gegevens...
puts Person.methods.sort

# aanmaken van een voorbeeld
person = Person.new do |p|
  p.voor_naam = "frank"
  p.familie_naam = "franken"
end
# person.save
puts person

Person.find(:all, :conditions => {:voor_naam => "carl"}).each do |p|
  puts p
end
