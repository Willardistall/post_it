class CreatePostIts < ActiveRecord::Migration[5.2]
  def change
    create_table :post_its do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
