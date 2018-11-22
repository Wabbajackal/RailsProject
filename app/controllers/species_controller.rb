class SpeciesController < ApplicationController
  def index
    @species = Specie.all
  end

  def show
    @specie = Specie.find(params[:id])
  end

  # def load_cart
  #   unless session[:hunter].nil?
  #     @cart_hunter = Hunter.find(session[:hunter])
  #   end
  #   unless session[:target].nil?
  #     @cart_target = Target.find(session[:target])
  #   end
  # end

end
