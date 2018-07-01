require "sinatra"               # Load Sinatra

get("/apple") do                # Path to our request
    "Here's a juicy apple!"
end