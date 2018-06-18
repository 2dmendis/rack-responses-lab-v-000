class Application
  
  def call(env)
    resp = Rack::Response.new 
    time = Time.new 
    
    resp.finish
  end 
end 