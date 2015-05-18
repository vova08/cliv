require "sinatra"


get "/" do
  haml '%div.title Hello World'
end

not_found do
	status 404
	     "Something wrong! Try to type URL correctly or call to UFO."
	
end

get "/hello/:name" do 

"hello#{params[:name]}"
end

get "/time" do
	code = "<%= Time.now %>"
  erb code
end  
