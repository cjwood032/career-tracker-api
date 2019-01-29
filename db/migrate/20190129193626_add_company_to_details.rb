class AddCompanyToDetails < ActiveRecord::Migration[5.2]
  def change
    change_table :details do |t|
      t.string :company
    end
  end
end
