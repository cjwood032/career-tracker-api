class DetailsRename < ActiveRecord::Migration[5.2]
  def change
    rename_column :details, :update_date, :updated
    rename_column :details, :last_contact, :contacted
    rename_column :details, :contact_email, :email
    rename_column :details, :contact_name, :name
    rename_column :details, :contact_title, :role
  end
end
