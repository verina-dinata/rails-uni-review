class AddEmailDomainToUniversity < ActiveRecord::Migration[7.0]
  def change
    add_column :universities, :email_domain, :string
  end
end
