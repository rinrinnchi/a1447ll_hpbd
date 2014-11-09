require "a1447ll_hpbd/version"
require "a1447ll_hpbd/message"

module A1447llHpbd
  def self.run  
    print "Input the someone's name who has birthday today: "
    n = gets.chomp
    s = n.upcase.split(%r{\s*})
    name = ""
    for i in 0 .. s.length-2 do
      name = name + s[i] + "."
    end
    name = ".:" + name + s[-1] + ":."
    msg = Message.new name
    puts ""
    msg.draw 
    puts ""
    return "Wish you a happy birthday! <3" 		
  end
end
