class Figuur
  def initialize(teken = '*')
    @teken = teken
  end
  def horizontaal(aantal)
    @aantal = aantal
    1.upto(aantal){print @teken}
    puts
  end
  def zijkant
    printf("#@teken%#{@aantal -2 }s#@teken\n"," ")
  end
  def schuin(aantal)
    spatie = 0
    1.upto(aantal) do
      spatie += 1
      printf("#@teken%#{spatie}s#@teken\n"," ")
    end
  end
end
