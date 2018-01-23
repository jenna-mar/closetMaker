class ItemsController < ApplicationController

	before_action :logged_in_user, only: [:new, :create, :update, :destroy]

	def new
		@user = User.find_by(id: session[:user_id])
		@item = Item.new
	end

	def create
		@user = User.find_by(id: session[:user_id])
		@item = @user.items.create(item_params)

		if @item.save
			redirect_to user_item_path(@user, @item)
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:user_id])
		@item = Item.find(params[:id])
	end

	def edit
		@user = User.find_by(id: session[:user_id])
		@item = @user.items.find(params[:id])
	end 

	def update
		@user = User.find_by(id: session[:user_id])
		@item = @user.items.find(params[:id])

		if @item.update(item_params)
			redirect_to user_item_path(@user, @item)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find_by(id: session[:user_id])
		@item = Item.find(params[:id])
		@item.destroy

		redirect_to user_items_path(@user)
	end

	def index
		@user = User.find(params[:user_id])
		#@items = Item.order(sort_column + " " + sort_direction)
    @items = Item.all
  end

	private
		def item_params
			params.require(:item).permit(:name, :img, :ref_url, :o_name, 
				:brand, :item_type, :ha_type, :color, :p_price, :f_price, :price_currency, :date_p, :date_r, :notes, :notarrived)
		end
		def logged_in_user
			unless logged_in?
				flash[:danger] = "Please log in."
				redirect_to login_url
			end
		end
end
