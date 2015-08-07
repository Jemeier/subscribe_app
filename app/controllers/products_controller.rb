class ProductsController < ApplicationController
  autocomplete :product, :name 


  def index
    @product = Product.all
    @products = Product.paginate(page: params[:page], per_page: 30)
  end


  private

      def product_params
        params.require(:name, :type).permit(:description, 
                                            :category, 
                                            :image_file_name, 
                                            :image_updated_at,
                                            :image_content_type,
                                            :image_file_size,
                                            :image_num)
      end
end

