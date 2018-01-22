class UsersController < ApplicationController

	before_action :logged_in_user, only: [:edit, :update]
	before_action :correct_user, only: [:edit, :update]

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:success] = "Successfully Saved."
			redirect_to user_items_path(current_user)
		else
			render 'edit'
		end
	end

	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end

	def logged_in_user
		unless logged_in?
			flash[:danger] = "Please log in."
			redirect_to login_url
		end
	end

	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_url) unless @user == current_user
	end
end
