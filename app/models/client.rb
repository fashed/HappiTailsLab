class Client < ActiveRecord::Base
  belongs_to :shelter
  has_many :animals
  validates :age, numericality: { only_integer: true }
end
