class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :lede
      t.string :image

      t.timestamps
    end
  end
end
