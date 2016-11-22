class Supplier < ApplicationRecord
  has_many :products # hey Rails, please write me a method called products
end
