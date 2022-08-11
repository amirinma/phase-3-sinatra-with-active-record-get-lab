require "pry"
class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to :bakery
  def self.by_price
    self.all.sort_by{|bg| bg.price}.reverse
  end
end
