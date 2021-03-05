class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :post, presence: true
      t.references :text
      t.references :topic
      t.timestamps
    end
  end
end
