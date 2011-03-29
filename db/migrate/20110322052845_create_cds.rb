class CreateCds < ActiveRecord::Migration
  def self.up
    create_table :cds do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :cds
  end
end
