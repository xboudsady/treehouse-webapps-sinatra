require "sinatra"                       # Load Sinatra

#set :bind, "0.0.0.0"                   # Allows sinatra to be loaded in other network outside localhost

get("/apple") do                        # Path to our request
    "<h1>Here's a juicy apple!</h1>"
end

get("/banana") do
    "<h1>Here's a ripe banana!</h1>"
end

get("/carrot") do
    "<h1>Here's a crunchy carrot!</h1>"
end
