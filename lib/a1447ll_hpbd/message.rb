class Message
  def initialize name 
    @width = name.length < 31 ? 33 : name.length + 9 - name.length%4
    @height = 9
    @name = name
  end

  def insert txt, str
    beg = (@width - txt.length)/2  
    fin = beg + txt.length - 1
    str[beg..fin] = txt
  end

  def draw 
    msg = %w()
    msg[0] = msg[@height-1] = "x . " * (@width/4) + "x"
    for i in 1 .. @height-2 do
      msg[i] = i%2 == 1 ? ("." + " " * (@width - 2) + ".") : 
                          ("x" + " " * (@width - 2) + "x") 
    end

    insert ">>> HAPPY BIRTHDAY! <<<", msg[2]
    insert @name, msg[4]
    insert "\\(*^ 3 ^*)/", msg[6]

    for i in 0 .. msg.size-1
      puts msg[i]
    end
  end
end
