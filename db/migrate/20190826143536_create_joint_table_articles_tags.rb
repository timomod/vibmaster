class CreateJointTableArticlesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :joint_table_articles_tags do |t|
      t.string :articles
      t.string :tags
    end
  end
end
