class ProductsController < ApplicationController
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

  private

  def product_params
    params.require(:product).permit(:name, :description, :category, :state, :shipping_charges, :shipping_origin_area, :estimated_shipping, :price, image_attributes: [:image_url]).merge(user_id: current_user.id)
  end

end
