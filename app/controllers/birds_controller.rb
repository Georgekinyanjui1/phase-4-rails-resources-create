class BirdsController < ApplicationController

  # POST /birds
  def create
    bird = Bird.create(params.permit(:name, :species))
    render json: bird, status: :created
  end

  private
  # all methods below here are private

  def bird_params
    params.permit(:name, :species)
  end
  
end