class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :post_id
      t.string :title
      t.string :text
      t.string :score
      t.string :user_id

      t.timestamps
    end
  end
end
