class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_id
      t.string :card_name
      t.string :content
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
