class DeletePicts < ActiveRecord::Migration[5.2]
  def change
    drop_table :picts do |t|
      t.string :image, null: false
      t.text :comment
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
