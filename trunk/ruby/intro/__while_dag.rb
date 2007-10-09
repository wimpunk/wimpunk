class WhileDag
  for dag in (1...8)
    print "#{dag}: "
    case (dag)
    when 1 : puts('maandag')
    when 2 : puts('dinsdag')
    when 3 : puts('woensdag' )
    when 4 : puts('donderdag' )
    when 5 then puts('vrijdag')
      puts("...bijna weekend!")
    when 6, 7 
      print('weekend ') 
      puts('- zaterdag' ) if dag == 6
      puts('- zondag')    if dag == 7
    when 5 : puts( 'nogmaals vrijdag' )
    else puts( 'ongeldige dag...')     
    end
  end
  
end