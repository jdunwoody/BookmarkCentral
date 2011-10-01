class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.datetime :last_visited
      t.integer :times_visited

      t.timestamps
    end
  end
end
