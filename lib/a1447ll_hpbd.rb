require "a1447ll_hpbd/version"
require "a1447ll_hpbd/msg"

module A1447llHpbd
  def self.hpbd n
    s = n.upcase.split(%r{\s*})
    name = ""
    for i in 0 .. s.length-2 do
      name = name + s[i] + "."
    end
    name = name + s[-1]
    Msg.draw name
    return "Wish you a happy birthday!" 		
  end
end
