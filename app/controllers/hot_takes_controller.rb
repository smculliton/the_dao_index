class HotTakesController < ApplicationController
  def edit
    if params[:id] == 'random'
      @hot_take = HotTake.order('RANDOM()').first
    end
  end

  def update
    hot_take = HotTake.find(params[:id])

    if params[:vote] == 0
      hot_take.update(votes: (hot_take.votes + 1))
    else
      hot_take.update(votes: (hot_take.no_votes + 1))
    end
  end
end