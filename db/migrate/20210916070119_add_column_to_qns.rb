class AddColumnToQns < ActiveRecord::Migration[6.1]
  def change
    add_column :qns, :originality, :string
  end
end
