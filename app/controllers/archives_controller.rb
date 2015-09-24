class ArchivesController < ApplicationController
  before_action :set_archive, only: [:show, :edit, :update, :search, :destroy]

  respond_to :html

  def index
    if params[:query].present?
	@archives = Archive.search(params[:query], keyword_1: params[:keyword_1], keyword_2: params[:keyword_2], keyword_3: params[:keyword_3])
    else
	@archives = nil
    end
    
    if (params.has_key?(:search))
	if (params[:search].empty?)
		@archives = nil
	else
#		@archives = Archive.search(params[:search]).order("created_at DESC")
		@archives = Archive.search(params[:search])
	end
    end 
  end

  def show
    respond_with(@archive)
  end

  def new
    @archive = Archive.new
    respond_with(@archive)
  end

  def edit
  end

  def create
    @archive = Archive.new(archive_params)
    @archive.save
    respond_with(@archive)
  end

  def update
    @archive.update(archive_params)
    respond_with(@archive)
  end

  def destroy
    @archive.destroy
    respond_with(@archive)
  end

  def search
    @archives = Archive.search params[:search]
  end

  private
    def set_archive
      @archive = Archive.find(params[:id])
    end

    def archive_params
      params.require(:archive).permit(:title, :description, :source_name, :release, :keyword_1, :keyword_2, :keyword_3, :english_doc, :korean_doc, :translator, :doc_id, :kor_title, :source_url)
    end
end
