class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.string :title
      t.string :company
      t.string :location
      t.date :date_added
      t.string :link
      t.string :description
      t.timestamps
    end
  end
end
