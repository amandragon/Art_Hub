class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :author, index: true
      t.belongs_to :reviewee, index: true
      t.string :review_text
      t.integer :score

      t.timestamps
    end
  end
end
