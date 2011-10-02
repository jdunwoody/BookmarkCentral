class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.references :bookmarks
      t.timestamps
    end
  end
end
