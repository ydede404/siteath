class AddColumnToPrestation < ActiveRecord::Migration[5.1]
  def change
    add_column :prestations, :image_uid, :string
    add_column :prestations, :image_name, :string
  end
end
