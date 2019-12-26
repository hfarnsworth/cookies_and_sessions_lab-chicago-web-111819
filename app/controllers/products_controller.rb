class ProductsController < ApplicationController
    
    def new
        @product = Product.new
    end

    def create
        @product = Product.create(product_params)
        add_to_cart
        redirect_to products_path
    end

    def index
        @products = cart
    end

    private

    def product_params
        params.require(:product).permit(:name)
    end
end
