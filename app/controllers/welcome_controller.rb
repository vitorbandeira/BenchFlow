class WelcomeController < ApplicationController
  def index
    @publications = Publication.all
    @publication = Publication.new
  end
end
