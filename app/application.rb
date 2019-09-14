class Application

    def call(env)
        resp = Rack::Response.new
        hi = Time.now.strftime("%H").to_i > 12 ? "Good Afternoon" : "Good Morning" 
        resp.write (hi)
        resp.finish
    end

end