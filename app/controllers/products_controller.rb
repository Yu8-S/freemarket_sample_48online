class ProductsController < ApplicationController
  def index
    @womens = Product.where("category = ?","レディース").limit(4).order(:created_at)
    @mens = Product.where("category = ?","メンズ").limit(4).order(:created_at)
    @kids = Product.where("category = ?","ベビー・キッズ").limit(4).order(:created_at)
    @cosmetics = Product.where("category = ?","コスメ・香水・美容").limit(4).order(:created_at)
    @chanel = Product.where("brand = ?","シャネル").limit(4).order(:created_at)
    @vuitton = Product.where("brand = ?","ルイヴィトン").limit(4).order(:created_at)
    @supreme = Product.where("brand = ?","シェプリーム").limit(4).order(:created_at)
    @nike = Product.where("brand = ?","ナイキ").limit(4).order(:created_at)
  end

  def show
  end

  def new
  end

  def edit
  end
end
