class AddWantsToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :wants, :text
  end
end
