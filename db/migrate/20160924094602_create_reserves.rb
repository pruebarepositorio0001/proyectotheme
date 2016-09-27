class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.string :name
      t.datetime :date
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
