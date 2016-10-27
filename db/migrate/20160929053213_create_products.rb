class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.string :address
      t.string :user_id

      t.timestamps
    end
  end
end
