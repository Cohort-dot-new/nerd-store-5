class Product < ActiveRecord::Base
  belongs_to :supplier # hey Rails, please write me a method called supplier
  has_many :images # hey Rails, please write me a method called images

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end

  def discounted?
    price.to_f < 10
  end
end
