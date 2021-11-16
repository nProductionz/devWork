class ChangeRequestsTypes < ActiveRecord::Migration[6.1]
  def change
    change_column :requests, :genre, :string
    change_column :requests, :tag1, :string
    change_column :requests, :tag2, :string
  end
end
