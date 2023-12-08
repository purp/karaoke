class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :category
      t.string :performer
      t.string :url
      t.boolean :postponed, default: false
      t.boolean :finished, default: false
      t.boolean :skipped, default: false
      t.timestamps
    end
  end
end
