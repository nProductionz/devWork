class ChangeTypeTag3 < ActiveRecord::Migration[6.1]
  def change
    change_column :requests, :tag3, :string
  end
end
