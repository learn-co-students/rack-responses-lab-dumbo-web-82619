class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now
        hour = time.hour

        if hour < 12
            resp.write "Good Morning!"
            # puts hour
        else
            resp.write "Good Afternoon!"
            # puts hour
        end 
        resp.finish
    end


end

