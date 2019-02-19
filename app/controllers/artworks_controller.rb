class ArtworksController < ApplicationController

  def index
    @artworks = policy_scope(Artwork)
  end

  def show
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

  def new
    @user = current_user
    @artwork = Artwork.new
    authorize @artwork
  end

  def create
    @artwork = Artwork.new(artwork_params)
    authorize @artwork
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

  def update
    @artwork = Artwork.find(params[:id])
    authorize @artwork
    @artwork.user = current_user
    @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    authorize @artwork
    @artwork.destroy
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :category, :photo, :availability, :start_date, :end_date)
  end
end
