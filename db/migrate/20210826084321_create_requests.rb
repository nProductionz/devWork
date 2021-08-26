class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.integer :requester_id
      t.integer :genre
      t.integer :tag1
      t.integer :tag2
      t.integer :tag3
      t.string :reference
      t.text :description

      t.timestamps
    end
  end
end
