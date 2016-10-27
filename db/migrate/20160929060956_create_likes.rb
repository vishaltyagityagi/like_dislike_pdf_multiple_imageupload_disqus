class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.string :likeable_id
      t.string :likeable_type
      t.boolean :like
      t.string :user_id
      t.string :product_id


      t.timestamps
    end
  end
end
