class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.new(favorite_params)
    if !@favorite.save
      flash[:notice] = @favorite.errors.full_messages.to_sentence
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
