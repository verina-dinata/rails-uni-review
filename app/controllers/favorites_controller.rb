class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    @university = University.find(params[:university_id])
    @favorite = Favorite.new(user: current_user, university: @university)
    @favorite.save!
    redirect_to universities_path
  end

  def destroy
    @university = University.find(params[:university_id])
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to universities_path
  end
end
