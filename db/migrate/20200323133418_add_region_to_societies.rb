class AddRegionToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :region, :string
  end
end
