
class Application
  
  def call(env)
    resp = Rack::Response.new 
    time = Time.new 
    hour = time.hour 
    
    if hour < 12 && hour > 0
      resp.write "morning"
    else 
      resp.write "afternoon"
    end 
    resp.finish
    
  end 
  
end 