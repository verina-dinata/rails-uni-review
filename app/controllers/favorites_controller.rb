class FavoritesController < ApplicationController
  def create
    @favorites = current_user.favorites.new(favorites_params)
    if !@favorites.save
      flash[:notice] = @favorites_params.errors.full_messages.to_sentence
    end
    redirect_to @favorite.university
  end

  def destroy
    @favorite = current_user.favorites.find(params[:id])
    @university = @favorite.university
    @favorite.destroy
    redirect_to university
  end

  private

  def favorite_params
    params.require(:favorite).permit(:university_id)
  end
end
