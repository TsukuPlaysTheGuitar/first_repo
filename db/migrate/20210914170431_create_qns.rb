class CreateQns < ActiveRecord::Migration[6.1]
  def change
    create_table :qns do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
