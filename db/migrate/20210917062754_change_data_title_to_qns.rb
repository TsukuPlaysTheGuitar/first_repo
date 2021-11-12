class ChangeDataTitleToQns < ActiveRecord::Migration[6.1]
  def change
    change_column :qns, :user_id, :integer
    change_column :users, :name, :string
    change_column :users, :password, :string
  end
end
