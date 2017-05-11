require 'sinatra'
require 'sinatra/flash'

enable :sessions

get '/' do
	@email = params[:email]
	erb :index
end

get '/about' do
	@name = "Sam"
	erb :about
end

get '/contact' do
	erb :contact
end

get '/posts' do
	@posts = ["First Post", "Second Post", "Third Post"]
	erb :posts
end

get '/login' do
	@email = params[:email]
	@password = params[:password]

	if @email == "sam@me.com" && @password == "12345678" 
			 erb :index
		 else 
		flash[:notice] = "Try Again!"
		erb :login
	end 


end