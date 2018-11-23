class HuntersController < ApplicationController
  def index
    @hunters = Hunter.all.page(params[:page]).per(12)
  end

  def show
    @hunter = Hunter.find(params[:id])
  end

  def add_to_cart
    session[:hunter] = params[:id]

    if session[:target].nil?
      redirect_to '/targets'
    else
      redirect_to '/hunters'
    end
  end

  def clear_cart
    session[:hunter] = []
    redirect_to '/targets'
  end
end
