class HotTake < ApplicationRecord
  validates_presence_of :description

  def self.hottest_takes
    HotTake.select('*, hot_votes - cold_votes as index').order(index: :desc).limit(5)
  end

  def self.coldest_takes
    HotTake.select('*, hot_votes - cold_votes as index').order(index: :asc).limit(5)
  end
end