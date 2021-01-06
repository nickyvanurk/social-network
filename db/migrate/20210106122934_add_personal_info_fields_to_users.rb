class AddPersonalInfoFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :name, :string
    add_column :users, :age, :integer, null: false
    add_column :users, :gender, :string, null: false
    add_column :users, :country_code, :string, null: false
  end
end
