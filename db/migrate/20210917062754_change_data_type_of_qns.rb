class ChangeDataTitleToQns < ActiveRecord::Migration[6.1]
  def change
    change_column :qns, :user_id, :integer
  end
end
