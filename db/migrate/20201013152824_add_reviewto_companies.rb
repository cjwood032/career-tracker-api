class AddReviewtoCompanies < ActiveRecord::Migration[5.2]
  def change
    change_table :companies do |t|
      t.string :reviews
    end
  end
end
