class SecretMenuItemsController < ApplicationController
  before_action :set_secret_menu_item, only: %i[ update destroy ]

  # GET /secret_menu_items
  def index
    @secret_menu_items = SecretMenuItem.all

    render json: @secret_menu_items, status: :ok
  end

  # GET /secret_menu_items/1
  def show
    @secret_menu_item = SecretMenuItem.find(params[:id])
    render json: @secret_menu_item, status: :ok
  end

  # POST /secret_menu_items
  def create
    @secret_menu_item = SecretMenuItem.create(secret_menu_item_params)

    if @secret_menu_item.save
      render json: @secret_menu_item, status: :created, location: @secret_menu_item
    else
      render json: @secret_menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /secret_menu_items/1
  def update
    if @secret_menu_item.update(secret_menu_item_params)
      render json: @secret_menu_item, status: :ok
    else
      render json: @secret_menu_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /secret_menu_items/1
  def destroy
    if @secret_menu_item.destroy!
      render json: nil, status: :ok
          else
            render json: @post.errors, status: :unprocessable_entity
          end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secret_menu_item
      @secret_menu_item = SecretMenuItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def secret_menu_item_params
      params.require(:secret_menu_item).permit(:menu_name, :restaurant_name, :menu_description)
    end
end
