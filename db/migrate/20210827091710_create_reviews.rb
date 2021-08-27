class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :voto
      t.integer :author_id
      t.text :test

      t.timestamps
    end
  end
end
