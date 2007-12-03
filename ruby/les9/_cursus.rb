
class Cursus
  attr :naam, false
  attr_reader :docent
  attr :tijdstip, false
  attr_reader :aantal_cursisten
  def initialize naam, docent, tijdstip, aantal
    @naam = naam
    @docent = docent
    @tijdstip = tijdstip
    @aantal_cursisten = aantal
  end
  
  
  def overdag?
    @tijdstip < 18
  end

  def naam? cursus_naam
    start = @naam.slice(0, cursus_naam.length)
    start == cursus_naam
  end
 
  def to_s
    tijdstip = overdag? ? "overdag" : "\'s avonds"
    "De cursus \'#{@naam}\' wordt #{tijdstip} gegeven door #{@docent}"
  end

  def <=> a
    @naam <=> a.naam
  end

end
