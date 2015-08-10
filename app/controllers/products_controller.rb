class ProductsController < ApplicationController
  autocomplete :product, :name 


  def index
    if params[:category]
      @products = Product.where(category: params[:category]).paginate(page: params[:page], per_page: 30)
    elsif params[:id]
      @products = Product.where(id: params[:id]).paginate(page: params[:page], per_page: 30)
    elsif params[:product_name]
      @products = Product.where(name: params[:product_name]).paginate(page: params[:page], per_page: 30)
    else
      @products = Product.paginate(page: params[:page], per_page: 30)
    end
  end

  def create
    @product = Product.new(product_params)
    redirect_to '/dashboard'
  end

  private

      def product_params
        params.require(:product).require(:name)
        params.require(:product).permit(:category, :description,
                      :name,
                      :format, 
                      :image_file_name, 
                      :image_updated_at,
                      :image_content_type,
                      :image_file_size,
                      :image_num)
      end
end


