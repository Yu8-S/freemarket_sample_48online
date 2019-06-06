class ProductsController < ApplicationController
  before_action :set_product
  def index
    @womens = Product.get_categroy("レディース")
    @mens = Product.get_categroy("メンズ")
    @kids = Product.get_categroy("キッズ・ベビー")
    @cosmetics = Product.get_categroy("コスメ")
    @chanel = Product.get_categroy("シャネル")
    @vuitton = Product.get_categroy("ルイヴィトン")
    @supreme = Product.get_categroy("シェプリーム")
    @nike = Product.get_categroy("ナイキ")
  end

  def show
    @user = Product.where("user_id = #{@product.user_id}").limit(6)
    @evaluation = @product.evaluations.order(:created_at)
    @brand = Product.where("brand = #{@product.brand}").limit(6)
  end

  def new
    @product = Product.new
    @product.build_image
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "ユーザを登録しました"
      redirect_to root_path
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end

  def edit
  end

  def update
    if product.user_id == current_user.id
      product.update(products_params)
      if @product.save
        flash[:success] = "商品を編集しました"
        redirect_to root_path
      else
        flash[:danger] = "商品の編集に失敗しました"
        render :update
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :category, :state, :shipping_charges, :shipping_origin_area, :estimated_shipping, :price, image_attributes: [:image_url]).merge(user_id: current_user.id)
  end

  def products_params
    params.permit(:name, :description, :category, :state, :shipping_charges, :shipping_origin_area, :estimated_shipping, :price, image_attributes: [:image_url]).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
