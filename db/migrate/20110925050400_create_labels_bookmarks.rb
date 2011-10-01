class CreateLabelsBookmarks < ActiveRecord::Migration
  def change
    create_table :labels_bookmarks, :id => false do |t|
      t.integer :bookmark_id
      t.integer :label_id
    end
  end
end
