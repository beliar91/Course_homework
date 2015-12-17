class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.text :description
      t.string :title

      t.timestamps null: false
    end
  end
end
