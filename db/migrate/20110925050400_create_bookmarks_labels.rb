class CreateBookmarksLabels < ActiveRecord::Migration
  def self.up
    create_table :bookmarks_labels, :id => false do |t|
      t.integer :bookmark_id
      t.integer :label_id
    end
    
  end

  def self.down
    drop_table :bookmarks_labels
  end
end
