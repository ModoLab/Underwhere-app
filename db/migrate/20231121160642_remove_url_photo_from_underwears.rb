class RemoveUrlPhotoFromUnderwears < ActiveRecord::Migration[7.1]
  def change
    remove_column :underwears, :url_photo, :string
  end
end
