class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.text :content, default: ""
      t.datetime :created_at
      t.timestamps
    end
  end
end
