class ProductsController < ApplicationController
  def index
    @womens = Product.category("レディース")
    @mens = Product.category("メンズ")
    @kids = Product.category("キッズ・ベビー")
    @cosmetics = Product.category("コスメ")
    @chanel = Product.category("シャネル")
    @vuitton = Product.category("ルイヴィトン")
    @supreme = Product.category("シェプリーム")
    @nike = Product.category("ナイキ")
  end

  def show
  end

  def new
  end

  def edit
  end
end
