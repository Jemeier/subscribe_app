class ProductsController < ApplicationController
  autocomplete :product, :name 


  def index
    if params[:category]
      @products = Product.where(category: params[:category]).paginate(page: params[:page], per_page: 30)
    else
      @products = Product.paginate(page: params[:page], per_page: 30)
    end
  end

  def autocomplete_product_name
    render 'new'
    # redirect_to products_url
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

