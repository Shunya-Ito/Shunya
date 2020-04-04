class AddActivityToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :activity, :text
  end
end
