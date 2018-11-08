class HuntersController < ApplicationController
  def index
    @hunters = Hunter.all
  end

  def show
  end
end
