class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :serial_id
      t.string :image_url
      t.integer :season_number
      t.string :name
      t.string :description
      t.text :story

      t.timestamps
    end
  end
end
