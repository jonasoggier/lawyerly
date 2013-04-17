class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :user
      t.string :name
      t.string :email
      t.text :address
      t.string :city
      t.text :teaser
      t.text :description

      t.timestamps
    end
    add_index :companies, :user_id
  end
end
