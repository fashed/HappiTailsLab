class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_one :client
end
