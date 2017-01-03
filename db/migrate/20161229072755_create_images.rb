class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_url, null: false, limit: 255

      t.timestamps
    end
  end
end
