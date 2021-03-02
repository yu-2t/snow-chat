class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.string :name
      t.text :text, null: false
      t.references :topic, null: false
      t.timestamps
    end
  end
end
