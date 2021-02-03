class DreamersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @dreamers = Dreamer.all
  end
  
  def new
    @dreamer = Dreamer.new

  end

  def create
   
    @dreamer = Dreamer.new(dreamer_params)
    if @dreamer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  def basic_auth
  end
  

 private 

    def dreamer_params
    params.require(:dreamer).permit(:dream_title,:declaration,:period,:reward,:genre_id,:image).merge(user_id: current_user.id)
    end

end