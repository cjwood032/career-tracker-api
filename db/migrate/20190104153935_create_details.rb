class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.date :update_date
      t.string :step
      t.date :last_contact
      t.string :contact_email
      t.string :contact_name
      t.string :contact_title
      t.timestamps
    end
  end
end
