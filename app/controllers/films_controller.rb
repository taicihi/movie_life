class FilmsController < ApplicationController
  def index
    @films = Film.all
  end
  
  def new
    @film = Film.new
  end
  
  

  def create
    @film = current_user.films.new(film_params)

    if @film.save
      redirect_to films_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def film_params
    params.require(:film).permit(:user_id, :film_name, :image, :summary)
  end
end
