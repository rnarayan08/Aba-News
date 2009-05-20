class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :article_id
      t.string :name
      t.text :body
      t.timestamp :created_at
    end
  end

  def self.down
    drop_table :comments
  end
end
