class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_id
      t.string :card_name
      t.string :content
      t.belongs_to :user
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.integer :score5

      t.timestamps null: false
    end
  end
end
