class AddClientToAnimals < ActiveRecord::Migration
  def change
    add_reference :animals, :client, index: true, foreign_key: true
  end
end
