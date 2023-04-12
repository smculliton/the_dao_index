class HotTake < ApplicationRecord
  validates_presence_of :description

  def self.hottest_takes
    HotTake.select('*, hot_votes - cold_votes as index').where('hot_votes - cold_votes > 0').order(index: :desc)
  end

  def self.coldest_takes
    HotTake.select('*, hot_votes - cold_votes as index').where('hot_votes - cold_votes <= 0').order(index: :asc)
  end
end