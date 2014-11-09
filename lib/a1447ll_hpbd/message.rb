class Message
  def initialize name 
    @width = 37
    @height = 9
    @name = name
  end

  def draw 
    msg = %w()
    msg[0] = msg[@height-1] = "x . " * (@width/4) + "x"
    n = "|" + (' ' * ((35 - @name.length)/2)) + @name + (' ' * ((35 - @name.length)/2)) + "|"   
    b1 = '|' + (' ' * 35) + '|'
    b2 = '*' + (' ' * 35) + '*'

    puts msg[0]
    puts b1
    puts b2
    puts '|' + (' ' * 7) + ">> HAPPY BIRTHDAY! <<" + (' ' * 7) + '|'
    puts b2
    puts n
    puts b2
    puts b1
    puts msg[@height-1]
  end
end
