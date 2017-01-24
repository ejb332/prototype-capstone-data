class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = current_user.items
    @categories = Category.order(:name)
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
    tag_response = ClarifaiRuby::TagRequest.new.get(response["data"]["img_url"])
    tag_array_string = tag_response.tag_images.first.tags_by_words
    # puts "~" * 100
    # puts response
    # p tag_response.tag_images.first.tags_by_words
    # puts "~" * 100
    @item = Item.new(
      name: params["name"],
      user_id: current_user.id,
      tags: tag_array_string
    )
    if @item.save
      params[:category_ids].each do |category_id|
        ItemCategory.create(
          item_id: @item.id,
          category_id: category_id
        )
      end
      flash[:success] = "Item added to closet"
      redirect_to "/items"
    else
      flash[:warning] = "Error! Item not saved - please try again"
      render "new.html.erb"
    end
  end

  def show
    @item = Item.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @item = Item.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    item = Item.find_by(id: params[:id])
    item.name = params[:name]
    if item.save
      flash[:success] = "Item updated and saved to closet"
      redirect_to "/items"
    else
      flash[:warning] = "Error! Item not saved - try again"
      render "edit.html.erb"
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    flash[:success] = "Item removed from closet"
    redirect_to "/items"
  end
end