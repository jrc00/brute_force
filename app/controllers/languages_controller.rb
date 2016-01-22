class LanguagesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_user!

  def index
    @languages = Language.all
    # @languages.sort! { |l| l.name.downcase }
  end

  def show
  end

  def new
    @language = Language.new
  end

  def edit
    @language = Language.find(params[:id])
  end

  def set_resource

  end

  def create
    @language = Language.new(language_params)
    if Language.find_by(name: @language.name) == nil
      @language.save
      redirect_to @language, notice: 'Language was successfully created.'
    else
      redirect_to @language, notice: 'Language already exists.'
    end


  end

  def update
    @language = Language.find(params[:id])
    if @language.update_attributes(language_params)
    redirect_to languages_index_path, notice: 'Language was successfully updated.'
    end
  end

  def destroy
    @language.destroy
    respond_to do |format|
      format.html { redirect_to languages_url, notice: 'Language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language
      @language = Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_params
      params.require(:language).permit(:name)
    end

end
