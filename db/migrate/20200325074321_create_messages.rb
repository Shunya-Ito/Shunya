class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :room, null: false, foreign_key: true
      t.text :content
      t.integer :sender_id
      t.boolean :is_user 
      t.timestamps
    end
  end
end
