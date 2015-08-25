# class Application
#
#   def initialize
#   end
#
#   def self.call(env)
#
#     request = Rack::Request.new(env)
#     if request.path == '/'
#       #if everything working... if they didnt write anything into the path
#       # method = RequestMethod.new(self)
#       # m = method.call(env)
#       # number = RandomNumber.new(self)
#       # n = number.call(env)
#       # server = ServerPort.new(self)
#       # s = server.call(env)
#       # erb = ErbMaker.new(self)
#       # e = erb.call(env,'./lib/templates/index.html.erb')
#         [200, {'Content-Type' => 'text/html'}, ["#{rand(100)}"]]
#      else
#        Rack::Response.new("<h1><a href='Are you lost?'></a></h1>")
#
#      end
#    end
#
# end
#
# our_very_first_web_app = App.new
#
# Rack::Handler::WEBrick.run(our_very_first_web_app, {:Port => 3000})


#add a class called SP
#once you have class

class Application
 def initialize

 end

def self.call(env)
   request = Rack::Request.new(env)
   if request.path == '/'
     method = RequestMethod.new(self)
     m = method.call(env)
     number = RandomNumber.new(self)
     num = number.call(env)
     sp = ServerPort.new(self)
     port = sp.call(env)
     erb = ErbMaker.new(self)
     erbresponse = erb.call(env,'./lib/templates/index.html.erb', binding)
     #erb response will return this no need to call [200,{'Content-Type' => 'text/html'}, ["#{rand(100)}"]]
   else
     Rack::Response.new("<h1><a href='/'>Are you lost?</a></h1>")
   end
 end
end
