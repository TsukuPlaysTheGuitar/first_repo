class AddColumnToQns < ActiveRecord::Migration[6.1]
  def change
    add_column :qns, :user_id, :string
    add_column :qns, :originality, :string
    add_column :qns, :creater_name, :string
  end
end
