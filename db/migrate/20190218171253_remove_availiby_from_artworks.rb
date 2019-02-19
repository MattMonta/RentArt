class RemoveAvailibyFromArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :availibility, :string
  end
end
