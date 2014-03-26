class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :post_id
      t.string :title
      t.text :text
      t.integer :score
      t.integer :user_id

      t.timestamps
    end
  end
end
