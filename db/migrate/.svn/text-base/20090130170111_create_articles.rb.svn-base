class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :label
      t.timestamp :created_at
      t.timestamp :updates_at
    end
  end

  def self.down
    drop_table :articles
  end
end
