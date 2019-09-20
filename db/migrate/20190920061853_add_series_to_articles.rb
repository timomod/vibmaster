class AddSeriesToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :series, :string
  end
end
