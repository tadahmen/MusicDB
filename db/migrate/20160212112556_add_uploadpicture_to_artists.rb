class AddUploadpictureToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :uploadpicture, :string
  end
end
