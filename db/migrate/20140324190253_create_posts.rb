class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :text
      t.integer :weight_score

      t.timestamps
    end
  end
end
