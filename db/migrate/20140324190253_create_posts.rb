class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :text
      t.integer :weight_score

      t.timestamps
    end
  end
end
