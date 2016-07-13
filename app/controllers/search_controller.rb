class SearchController < ApplicationController

		def search
	 	 if params[:q].nil?
	    	@document = []
	    	render json: @document
	  	 else
	    	@document = Document.search params[:q]
	    	render json: @document
	  	end
end
end
