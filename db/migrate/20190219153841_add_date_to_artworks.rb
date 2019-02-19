class AddDateToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :start_date, :date
    add_column :artworks, :end_date, :date
  end
end
