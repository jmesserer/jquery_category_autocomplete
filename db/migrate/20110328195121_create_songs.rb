class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.ingeter :number
      t.string :name
      t.integer :length
      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
