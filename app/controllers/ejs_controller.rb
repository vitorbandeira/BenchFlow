class EjsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ej, only: [:show, :edit, :update, :destroy]

  # GET /ejs
  # GET /ejs.json
  def index
    @ejs = Ej.all
  end

  # GET /ejs/1
  # GET /ejs/1.json
  def show
  end

  # GET /ejs/new
  def new
    @ej = Ej.new
  end

  # GET /ejs/1/edit
  def edit
  end

  # POST /ejs
  # POST /ejs.json
  def create
    @ej = Ej.new(ej_params)

    respond_to do |format|
      if @ej.save
        format.html { redirect_to @ej, notice: 'Ej was successfully created.' }
        format.json { render :show, status: :created, location: @ej }
      else
        format.html { render :new }
        format.json { render json: @ej.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ejs/1
  # PATCH/PUT /ejs/1.json
  def update
    respond_to do |format|
      if @ej.update(ej_params)
        format.html { redirect_to @ej, notice: 'Ej was successfully updated.' }
        format.json { render :show, status: :ok, location: @ej }
      else
        format.html { render :edit }
        format.json { render json: @ej.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejs/1
  # DELETE /ejs/1.json
  def destroy
    @ej.destroy
    respond_to do |format|
      format.html { redirect_to ejs_url, notice: 'Ej was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ej
      @ej = Ej.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ej_params
      params.require(:ej).permit(:name, :university_id)
    end
end
