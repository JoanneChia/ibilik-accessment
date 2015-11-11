helpers SessionHelper 

get '/login' do 
	erb :'sessions/login'
end 

post '/login' do

	@user = User.authenticate(params[:email], params[:password])
		
		if @user 
					session[:user_id] = @user.id
					redirect to '/'
		else 
					@message = "Email does not exist. Try again?" 
					erb :"sessions/login"
		end
end

post '/logout' do
	session[:user_id] = nil
	redirect to '/user_logout'
end			

get '/user_logout' do
	@user = current_user
	@logout_message = "Bye! See you again!"	
	erb :'static/index'
end	