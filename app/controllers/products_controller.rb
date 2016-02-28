class ProductsController < ApplicationController
	before_filter :validate_search_key , only: [:search]

	def index
		@products = Product.all
	end 

	def show
		@product = Product.find(params[:id])
	end

	def add_to_cart
		@product = Product.find(params[:id])

		if !current_cart.items.include?(@product)
			current_cart.add_product_to_cart(@product)
			flash[:notice] = "你已經成功將#{@product.title}加入購物車"
		else
			flash[:warning] = "購物車已有#{@product.title}這項商品"
		end

		redirect_to :back
	end

	def search
	    if @query_string.present?
	      search_result = Product.ransack(@search_criteria).result(distinct: true)
	      @products = search_result.paginate(:page => params[:page], per_page: 20 )
    	end
    	cookies[:search_title] = @query_string
    	set_page_title @query_string
	end

	protected
	def validate_search_key
		@query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
		@search_criteria = search_criteria(@query_string)
	end

	def search_criteria(query_string)
		{ title_or_description_cont: query_string }
	end
end
