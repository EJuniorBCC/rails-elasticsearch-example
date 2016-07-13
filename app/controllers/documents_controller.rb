class DocumentsController < ApplicationController
protect_from_forgery
	
	def index
  		@document = Document.all

  		render json: @document
	end

	def show
	  @document = Document.find params[:id]
	
	  	render json: @document
	end

	def new
	end

	def create
	 @document = Document.new document_params
	  if @document.save
	     render json: @document, status: :created, location: @user
	  else
	    render json: @document.errors, status: :unprocessable_entity
	  end
	end

private
  def document_params
    params.require(:document).permit :title, :text
  end
end
