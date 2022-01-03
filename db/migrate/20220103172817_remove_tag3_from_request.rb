class RemoveTag3FromRequest < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :tag3, :string
  end
end
