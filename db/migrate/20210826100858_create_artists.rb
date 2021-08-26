class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :genre
      t.integer :tag1
      t.integer :tag2
      t.integer :tag3

      t.timestamps
    end
  end
end
