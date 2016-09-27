class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :lastname
      t.string :mother_lastname
      t.string :email
      t.string :dni
      t.string :telephone
      t.string :photo
      t.boolean :state
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
