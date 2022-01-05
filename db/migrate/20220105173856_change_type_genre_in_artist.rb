class ChangeTypeGenreInArtist < ActiveRecord::Migration[6.1]
  def change
    change_column :artists, :genre, :string
  end
end
