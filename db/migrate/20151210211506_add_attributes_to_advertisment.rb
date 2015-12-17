class AddAttributesToAdvertisment < ActiveRecord::Migration
  def change
    add_column :advertisments, :user_id, :integer
  end
end
