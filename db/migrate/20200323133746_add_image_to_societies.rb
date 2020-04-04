class AddImageToSocieties < ActiveRecord::Migration[6.0]
  def change
    add_column :societies, :image, :string
  end
end
