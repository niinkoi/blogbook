class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.boolean :is_public, null: false, default: true

      t.timestamps
    end
  end
end
