class CreateResumes < ActiveRecord::Migration
  def self.up
    create_table :resumes do |t|
      t.string :title
      t.text :skills
      t.text :experience
      t.text :summary
      t.text :cv

      t.timestamps
    end
  end

  def self.down
    drop_table :resumes
  end
end
