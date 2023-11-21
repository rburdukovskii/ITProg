class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :grade, default: 0, null: false
      t.references :user
      t.timestamps
    end

    create_table :comments do |t|
      t.text :body, null: false
      t.references :user
      t.references :post
      t.timestamps
    end
  end
end
