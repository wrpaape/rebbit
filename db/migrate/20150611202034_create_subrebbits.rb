class CreateSubrebbits < ActiveRecord::Migration
  def change
    create_table :subrebbits do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
