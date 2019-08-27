class DropJointTableArticlesTags < ActiveRecord::Migration[5.2]
  def change
    drop_table(:joint_table_articles_tags)
  end
end
