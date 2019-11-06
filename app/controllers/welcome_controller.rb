class WelcomeController < ApplicationController

  def index
    #@publications = Publication.order('created_at DESC')
    @publication = Publication.new
    @search = Publication.ransack(params[:q])
    @publications = @search.result  
  end
end
