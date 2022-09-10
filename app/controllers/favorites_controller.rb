class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    @university = University.find(params[:university_id])
    @favorite = Favorite.find_by(user: current_user, university: @university)
    if @favorite
      @favorite.destroy
      respond_to do |format|
        format.json { render json: { favorite: nil, status: 200 } }
        format.html { redirect_to universities_path }
      end
    else
      @favorite = Favorite.create!(user: current_user, university: @university)
      respond_to do |format|
        format.json { render json: { favorite: @favorite, status: 200 } }
        format.html { redirect_to universities_path }
      end
    end
  end

  def destroy
    @university = University.find(params[:university_id])
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to universities_path
  end

end
