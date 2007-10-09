class FormatVraag
  # uitbreiding
  
  def initialize(vraag="een getal:")
    print "#{vraag} "
    @vraag = vraag
    @input = gets.chomp
  end
  
  def lijn
    1.upto(@vraag.length+1+@input.length) do  
      printf '-'
    end  
    printf "\n"
  end
  
  def to_s
    @input.to_s
  end
  
  def to_i
    @input.to_i
  end
  
end