class AddColumn2ToQns < ActiveRecord::Migration[6.1]
  def change
    add_column :qns, :creater_name, :string
  end
end
