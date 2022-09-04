class FavoritesController < ApplicationController
  before_action :set_favorite, only: %i[destroy]

  def index
    @favorites = policy_scope(Favorite)
  end

  def create
    @university = University.find(params[:university_id])
    @favorite = @university.favorites.build(user_id: current_user.id)
    authorize @favorite
    @favorite.save
  end

  def destroy
    @university = @favorite.university
    @favorite.destroy
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
    authorize @favorite
  end
end
