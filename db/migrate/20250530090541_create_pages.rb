class CreatePages < ActiveRecord::Migration[8.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
