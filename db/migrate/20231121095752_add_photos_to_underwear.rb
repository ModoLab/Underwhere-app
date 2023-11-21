class AddPhotosToUnderwear < ActiveRecord::Migration[7.1]
  def change
    add_column :underwears, :url_photo, :string
  end
end
