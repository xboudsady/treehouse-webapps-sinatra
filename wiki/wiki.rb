require "sinatra"                   # Load Sinatra gem

set :bind, "0.0.0.0"                # Allow remote access outside of localhost


def page_content(title)             # Loads the content of a text file, return them as a string
    File.read("pages/#{title}.txt") # File is a sublass of the IO class, File inherits a class method named read. File.read() lets you read the contents of a file into a string, using only the file name.
rescue Errno::ENOENT                # If the request file isn't found, the call File.read() may raise an Errno::ENOENT exception. "rescue" our program from being halted by the exception
    return nil                      # return nil on the "resuce"
end

def save_content(title, content)                    # First argument holds page title, second holds page content
    File.open("pages/#{title}.txt", "w") do |file|  # Ruby core File.open(), second argument "w" opens the file in write mode
        file.print(content)                         # call .print() to write the content to the file
    end
end


# ===== ROUTES =====

get "/" do                              # Root path
    erb :welcome                        # render the welcome.erb from our /views folder
end

get "/new" do
    erb :new
end

get "/:title" do                        # Get url path parameter
    @title = params[:title]             # Asign the params[:title] to a new instance variable
    @content = page_content(@title)     # Call the page_content(), passing in the .txt file to be read
    erb :show                           # Render an erb template
end

