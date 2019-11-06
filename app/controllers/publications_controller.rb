class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  # GET /publications
  # GET /publications.json
  def index
    @search = Publication.search(params[:q])
    @publications = @search.result
  end

  def by_tags
    @tag_name = params[:id]
    @publicationss = Tag.find_by(name: @tag_name).publications
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(publication_params)
    respond_to do |format|
      if @publication.save
        format.html { redirect_to root_path, notice: 'Publicação foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { redirect_to root_path, alert: 'Não foi possível salvar sua publicação.' }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to root_path, notice: 'Publicação foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { redirect_to root_path }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Publicação foi excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:title, :content, :user_id, :files, :publication_type, tag_ids:[])
    end
end
