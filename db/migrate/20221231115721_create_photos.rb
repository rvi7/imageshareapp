class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :tagline
      t.date :created_on

      t.timestamps
    end
  end
end
