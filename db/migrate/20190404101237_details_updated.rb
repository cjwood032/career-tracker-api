class DetailsUpdated < ActiveRecord::Migration[5.2]
  def change
    rename_column :details, :updated, :update_date
    rename_column :details, :contacted, :contact_date
    rename_column :details, :email, :contact_email
    rename_column :details, :name, :contact_name
    rename_column :details, :role, :contact_title
    add_column :details, :first_contact, :boolean
    add_column :details, :action, :string
    add_column :details, :method, :string
    add_column :details, :referral, :string
    add_column :details, :job_title, :string
    add_column :details, :job_link, :string
    add_column :details, :notes, :string
    add_column :details, :complete, :string
    add_column :details, :status, :string
  end
end
