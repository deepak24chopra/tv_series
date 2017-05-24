class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :image_url
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
