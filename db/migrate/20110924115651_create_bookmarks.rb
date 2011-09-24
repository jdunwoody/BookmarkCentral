class CreateBookmarks < ActiveRecord::Migration
  def self.up
    create_table :bookmarks do |t|
      t.string :url
      t.string :title
      t.timestamp :last_visited
      t.integer :num_visits

      t.timestamps
    end
  end

  def self.down
    drop_table :bookmarks
  end
end
