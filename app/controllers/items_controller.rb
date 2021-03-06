class ItemsController < ApplicationController
	
	def index
		@items = Item.all
	end

	def new
	end

	def create
		@item = Item.create(params[:item].permit(:name, :desc, :number, :rating))
		if @item.errors.empty?
			redirect_to item_path(@item)
		else
			render "new"
		end
	end

	def show
		unless @item = Item.where(id: params[:id]).first
			render text: "Page not found", status: 404
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
