class BackofficeController < ApplicationController

def index
  @search = Publication.search(params[:q])
  @publications = @search.result || Publication.all
  @universities = University.all
  @users = User.all
  @ejs = Ej.all
  @ej = Ej.new
  @university = University.new
  @tag = Tag.new
end

end
