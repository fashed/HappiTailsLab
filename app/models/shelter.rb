class Shelter < ActiveRecord::Base
	has_many :animals, dependent: :destroy
	has_many :clients, dependent: :destroy
end
