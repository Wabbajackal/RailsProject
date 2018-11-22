class TargetsController < ApplicationController

  # before_action :load_cart

  def index
    @targets = Target.all.page(params[:page]).per(12)
    # @cart_target = Target.find(session[:target])
  end

  def show
    @target = Target.find(params[:id])
    # @cart_target = Target.find(session[:target])
  end

  def add_to_cart
    session[:target] = params[:id]
    if params[:name].nil?
      session[:quantity] = 1
    end

    if session[:hunter].nil?
      redirect_to '/hunters'
    else
      redirect_to '/species'
    end
  end

  def clear_cart
    session[:target] = []
    redirect_to '/targets'
  end

  def update_quantity
    session[:quantity] = params[:quantity]
    # session[:quantity] = ActiveSupport::JSON.decode(CGI.unescapeHTML(params[:quantity]))
  end
end
