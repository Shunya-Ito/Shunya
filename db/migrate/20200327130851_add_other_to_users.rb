class AddOtherToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :other, :text
  end
end
