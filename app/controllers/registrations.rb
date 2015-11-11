helpers SessionHelper 

get '/signup' do 
	erb :'registrations/signup'
end

post '/signup' do
	@user = User.new(params[:user])
		
		if @user.save 
			session[:user_id] = @user.id
			# erb :'static/index'
			redirect to '/'
		else 
			@error = @user.errors.full_messages[0]
			erb :'registrations/signup'
			# redirect to 'registrations/signup'
		end	
end