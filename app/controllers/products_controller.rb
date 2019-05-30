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
  end

  def edit
  end
end
