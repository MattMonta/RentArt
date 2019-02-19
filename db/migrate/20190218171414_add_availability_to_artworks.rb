class AddAvailabilityToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :availability, :string
  end
end
