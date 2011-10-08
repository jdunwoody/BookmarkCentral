class CreateClouds < ActiveRecord::Migration
  def change
    create_table :clouds do |t|

      t.timestamps
    end
  end
end
