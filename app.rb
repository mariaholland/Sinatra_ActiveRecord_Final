require 'sinatra'
require 'sinatra/activerecord'

configure(:development){set :database, "sqlite3:development.sqlite3"}
set :sessions, true

require './models'

require 'bundler/setup'
require 'rack-flash'
enable :sessions
use Rack::Flash, :sweep => true
			
get '/' do
	erb :home
end

get '/welcome' do
	erb :welcome
end	

get '/sign-in' do
	erb :sign_in
end

get '/sign-up' do
  erb :sign_up
end

get '/mainpage' do
	@user=User.first
	@all_posts = Post.all
	erb :mainpage
end

post '/sign-in' do
	@user = User.where(username: params[:username], password: params[:password])
	redirect "/mainpage"
end

post '/sign-up' do
	@user = User.new(fname: params[:fname], lname: params[:lname], email: params[:email], username: params[:username], password: params[:password])
	if @user.save
		flash[:notice] = "Your account was created successfully."
	else 
		flash[:alert] = "There was a problem signing you in."
	end
	redirect "/mainpage"
 end

