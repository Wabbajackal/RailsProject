class HuntersController < ApplicationController
  def index
    @hunters = Hunter.all.page(params[:page]).per(12)
  end

  def show
    @hunter = Hunter.find(params[:id])
  end
end
