require 'pry'
class Application
  
  def call(env)
    resp = Rack::Response.new 
    time = Time.new 
    hour = time.hour 
    
    if hour < 12 && hour > 0
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end 
    resp.finish
    binding.pry
  end 
  
end 