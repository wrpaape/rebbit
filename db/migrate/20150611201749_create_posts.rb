class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :subrebbit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
