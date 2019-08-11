class AddImportedToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :imported, :boolean
  end
end
