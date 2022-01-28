class AboutController < ApplicationController
  def index
    if params[:genre]
      @search = params[:genre]
      @page = Wikipedia.find(@search)
    end
  end 
end
