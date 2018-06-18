require 'pry'
class Application 
 
  def call(env)
    resp = Rack::Response.new
    
    if @now > 24 
      resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
    end 
    resp.finish
    binding.pry
end 