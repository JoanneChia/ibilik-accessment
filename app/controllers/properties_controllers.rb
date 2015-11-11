#render a new form 
get '/properties/new' do
	@user = current_user
	erb :'properties/new'
end

#create a property
post '/properties' do 
	@user = current_user 
	@property = @user.property.new(params[:property])
	if @property.save
			redirect to "/properties/#{@property.id}"
	else
			erb :'properties/new'
	end
end 

#show the property 

get '/properties/:id' do
	# @user = current_user
	# @user_property = User.find_by(:id: @property.user_id) 
	erb :'properties/show'
end

#render edit form 
get 'properties/:id/edit' do 
	@properties = find_properties 
	erb :'questions/edit'
end


#delete the property 

delete '/properties/:id' do 
	@properties = Property.find_by(:id, params[:id]) 
	@question.destroy
	redirect to '/'
end 



