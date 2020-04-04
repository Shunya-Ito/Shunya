class AddHaveToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :have, :string
  end
end
