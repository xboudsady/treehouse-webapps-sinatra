require "sinatra"           # Load Sinatra gem

set :bind, "0.0.0.0"        # Allow remote access outside of localhost


get "/" do                                  # Root path
    erb :welcome            # render the welcome.erb from our /views folder
end