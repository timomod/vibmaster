class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.integer :position
      t.boolean :promoted
      t.string :category
      t.string :author

      t.timestamps
    end
  end
end
