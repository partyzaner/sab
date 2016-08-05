class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :header
      t.text :article_body

      t.timestamps
    end
  end
end
