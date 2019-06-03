class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @publications = Publication.order('created_at DESC')
    @publication = Publication.new
  end
end
