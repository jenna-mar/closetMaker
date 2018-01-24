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
    # get items that belong to user we are viewing
    items = Item.joins(:user).where('users.id = ?', params[:user_id])
    sort_order = nil

    # order results, default is ASC
    # if sorting by price, sort by currency first
    unless params[:column].blank?
      if params[:column].include? "price"
        sort_order = "price_currency, " + params[:column].gsub(/\+/, " ")
      else
        sort_order = params[:column].gsub(/\+/, " ")
      end
    end

    # filter for items from selected brand (if applicable)
    unless params[:brand].blank?
      brand = params[:brand].gsub(/\+/, " ")
      items = items.where('brand = ?', brand)
    end
    # filter for selected item type (if applicable)
    unless params[:item_type].blank?
      i_type = params[:item_type].gsub(/\+/, " ")
      items = items.where('item_type = ?', i_type)
    end
    # filter for selected hair accessory type (if applicable)
    unless params[:ha_type].blank?
      ha_type = params[:ha_type].gsub(/\+/, " ")
      items = items.where('ha_type = ?', ha_type)
    end
    # order results by desired attribute
    if sort_order
      items = items.order(sort_order)
    end
    if params[:arrived] == '2'
      items = items.where('notarrived = ?', false)
    elsif params[:arrived] == '3'
      items = items.where('notarrived = ?', true)
    end
    @items = items
  end

  def my_wardrobe
    if current_user
      redirect_to user_items_path(current_user)
    else
      redirect_to root_path
    end
  end

  def autofill
    url = params[:url]
    # open URL for scraping
    doc = Nokogiri::HTML(open(url))

    data = doc.css(".list-group-item.attribute .description a")
    # get item attributes
    # note for name, there is some leading whitespace so we use strip
    name = doc.css(".text-primary").xpath('text()').to_s.strip
    o_name = doc.css(".text-muted").xpath('text()').to_s
    brand = data[0].xpath('text()').to_s
    item_type = data[1].xpath('text()').to_s
    # return results in json
    test = {name: name, o_name: o_name, brand: brand, item_type: item_type}
    render json: test
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
