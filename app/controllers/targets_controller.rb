class TargetsController < ApplicationController
  def index
    @targets = Target.all.page(params[:page]).per(12)
  end

  def show
    @target = Target.find(params[:id])
  end
end
