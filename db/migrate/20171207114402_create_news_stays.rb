class CreateNewsStays < ActiveRecord::Migration
  def change
    create_table :news_stays do |t|
      t.string :title
      t.integer :user_id
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
