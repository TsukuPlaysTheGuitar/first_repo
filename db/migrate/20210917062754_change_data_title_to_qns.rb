class ChangeDataTitleToQns < ActiveRecord::Migration[6.1]
  def change
    change_column :qns, :user_id, "integer USING CAST(user_id AS integer)"
    change_column :users, :name, :string
    change_column :users, :password, :string
  end
end
