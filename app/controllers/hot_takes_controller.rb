class HotTakesController < ApplicationController
  def index
    @hottest = HotTake.hottest_takes
    @coldest = HotTake.coldest_takes
  end

  def edit
    if params[:id] == 'random'
      @hot_take = HotTake.order('RANDOM()').first
    else
      @hot_take = HotTake.find(params[:id])
    end
  end

  def update
    hot_take = HotTake.find(params[:id])

    if params[:vote] == 'hot'
      hot_take.update(hot_votes: (hot_take.hot_votes + 1))
    else
      hot_take.update(cold_votes: (hot_take.cold_votes + 1))
    end

    redirect_to '/hottakes'
  end

  def new
  end

  def create
    hottake = HotTake.create!(hot_take_params)

    redirect_to "/hottakes/#{hottake.id}/vote"
  end

  private

  def hot_take_params
    params.permit(:description)
  end
end