# A Friend class that says hello without a name, or hello with a name if the name is specified
#
class Friend
  def greeting(who = nil)
  		return "Hello!" if who == nil
  		return "Hello, #{who}!"
  end
end
