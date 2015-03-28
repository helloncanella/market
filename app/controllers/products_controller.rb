class ProductsController < ApplicationController
  def new

    @product = Product.new

  end

  def create
    @product = Product.create(product_params) 
    @product = Product.new

    render :new
  end

  def index
    @products = Product.all

  end

  def show
    @product= Product.find(params[:id])
  end

  def update

    if @product = Product.update(params[:id],product_params) 
      redirect_to edit_product_path      
    end

  end

  def edit
    @product = Product.find(params[:id])
    
  end

  private
    def product_params
      params.require(:product).permit(:name,:preco,:image,:description)
    end
end
