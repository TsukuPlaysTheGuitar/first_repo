class AddColumunToQns < ActiveRecord::Migration[6.1]
  def change
    add_column :qns, :user_id, :string
  end
end
