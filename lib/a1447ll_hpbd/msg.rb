class Msg
  def self.draw n
    border = "*.:." * 9 + "*"
    name = "|" + (' ' * ((35 - n.length)/2)) + n + (' ' * ((35 - n.length)/2)) + "|"   
    b1 = '|' + (' ' * 35) + '|'
    b2 = '*' + (' ' * 35) + '*'

    puts border
    puts b1
    puts b2
    puts '|' + (' ' * 7) + ">> HAPPY BIRTHDAY! <<" + (' ' * 7) + '|'
    puts b2
    puts name
    puts b2
    puts b1
    puts border
  end
end
