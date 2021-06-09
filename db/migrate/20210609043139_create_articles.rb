class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.bigint :user_id, null: false
      t.bigint :category_id
      t.string :title, null: false
      t.string :short_description, null: false
      t.text :content, null: false
      t.boolean :is_public, null: false, default: true

      t.timestamps
    end

    add_foreign_key :articles, :users, column: :user_id
    add_foreign_key :articles, :categories, column: :category_id
  end
end
