require 'pry'
class Time 
  attr_accessor :now
  def initialize(now)
    @now == now
  end 
  
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