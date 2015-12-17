class DropColumnsFromAdvertisments < ActiveRecord::Migration
  def change
    remove_columns :advertisments, :photo_content_type, :photo_file_size
  end
end
