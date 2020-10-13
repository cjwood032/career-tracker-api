class CompanyToInterview < ActiveRecord::Migration[5.2]
  def change

    create_table :companies do |t|
      t.string :name
      t.string :company
      t.string :job_title
      t.datetime :date
      t.string :requirements
      t.string :job_description
      t.string :notes
      t.string :about_company
      t.timestamps
    end
  end
end
