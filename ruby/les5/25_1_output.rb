#!/usr/bin/ruby

for dag in (1...8)
  case (dag)
  when 1: puts('maandag')
  when 2: puts('dinsdag')
  when 3: puts('woensdag')
  when 4: puts('donderdag')
  when 5 then puts('vrijdag')
    puts('...bijna weekend')
  when 6,7
    print('weekend') if dag == 6
    puts('zaterdag') if dag == 7
    puts('zondag')
  when 5: puts ('nogmaals vrijdag')
  else puts('ongeldige dag...')
  end
end