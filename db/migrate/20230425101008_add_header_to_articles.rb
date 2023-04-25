class AddHeaderToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :header, :string
  end
end
