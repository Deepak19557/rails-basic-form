class WelcomesController < ApplicationController

	def index
		@users = User.all 
		
	end
	def new
		@cities =City.all
	end
	def create
		@user = User.create(email: params[:user][:email],user_name: params[:user][:user_name], gender: params[:user][:gender],fruits: params[:user][:fruits],city_name: params[:user][:city_name],password: params[:user][:password],password_confirmation: params[:user][:password_confirmation])
		redirect_to root_path #welcome_path(@user.id)
	end

	def edit
		@cities =City.all
		@user = User.find(params[:id])
	end

	def update
		 @user = User.find(params[:id])
		 @user = @user.update(email: params[:user][:email],city_name: params[:user][:city_name], user_name: params[:user][:user_name],password: params[:user][:password],password_confirmation: params[:user][:password_confirmation])
	    redirect_to root_path
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy 
		@user = User.find(params[:id])
		@user.destroy 
		redirect_to root_path
		
	end

	def custom_method
		
	end
end
