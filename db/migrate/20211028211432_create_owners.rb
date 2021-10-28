class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.references :User, null: false, foreign_key: true
      t.references :Blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
