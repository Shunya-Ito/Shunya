class AddHaveToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :have, :text
  end
end
