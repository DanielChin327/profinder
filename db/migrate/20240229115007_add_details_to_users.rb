class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :phonenumber, :string
    add_column :users, :website_url, :string
    add_column :users, :contact_email, :string
    add_column :users, :linkedin_profile, :string
    add_column :users, :company_name, :string
    add_column :users, :bio, :text
  end
end
