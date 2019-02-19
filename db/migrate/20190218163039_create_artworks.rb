class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :photo
      t.string :category
      t.string :availibility
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
