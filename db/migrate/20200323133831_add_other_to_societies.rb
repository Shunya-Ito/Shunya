class AddOtherToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :other, :text
  end
end
