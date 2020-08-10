class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.boolean :completed, default: false
      t.string :format
      t.string :image
      t.integer :genre_id

      t.timestamps
    end
  end
end
