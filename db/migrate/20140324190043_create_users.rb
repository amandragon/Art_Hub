class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.text   :about_me
      t.string :remember_token
      t.integer :av_score

      t.timestamps
    end
  end
end
