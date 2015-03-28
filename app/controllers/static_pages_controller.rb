class StaticPagesController < ApplicationController
  def home
  	@products = Product.all
  end

  def basket 
  	@product = Product.all
  end

  def product
  end

  def adicionar_produtos
  end
end
