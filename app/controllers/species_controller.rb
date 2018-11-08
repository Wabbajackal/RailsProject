class SpeciesController < ApplicationController
  def index
    @species = Specie.all
  end

  def show
  end
end
