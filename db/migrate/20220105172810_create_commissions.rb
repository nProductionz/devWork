class CreateCommissions < ActiveRecord::Migration[6.1]
  def change
    create_table :commissions do |t|
      t.integer :prize
      t.text :details
      t.references :artist, null: false, foreign_key: true
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
