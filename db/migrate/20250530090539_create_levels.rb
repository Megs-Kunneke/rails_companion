class CreateLevels < ActiveRecord::Migration[8.0]
  def change
    create_table :levels do |t|
      t.string :title
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
end
