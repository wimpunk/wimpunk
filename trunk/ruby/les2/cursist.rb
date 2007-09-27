class Cursist
  #++ rdoc dink
  
  # dit kan ook single quoted
  def initialize( naam="", cursus="", lescode="")
    @naam = naam
    @cursus = cursus
    @code = lescode
  end
  
  # geen kamelen, scheidden door onderscores
  def to_s
  # de + kan ook vervangen worden door <<
    "naam:   " + @naam + "\ncursus: " + @cursus + "\ncode:   " + @code
  end
  
  def naam=(mynaam)
    @naam = mynaam
  end
  def cursus=(mycursus)
    @cursus = mycursus
  end
  def code=(mycode)
    @code=mycode
  end
end