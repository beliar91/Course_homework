class AddAttachmentPhotoToAddPhotoToAdvertisments < ActiveRecord::Migration
  def change
    remove_columns :advertisments, :photo_file_name, :photo_conent_type, :photo_fize_size, :photo_updated_at
  end
end
