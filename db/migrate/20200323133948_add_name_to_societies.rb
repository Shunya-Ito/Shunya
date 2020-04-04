class AddNameToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :name, :string
  end
end
