class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :author
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
