class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :author
      t.text :message
      t.references :Post, null: false, foreign_key: true
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
