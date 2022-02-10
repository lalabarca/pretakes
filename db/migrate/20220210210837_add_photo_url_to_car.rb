class AddPhotoUrlToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :photo_url, :string
  end
end
