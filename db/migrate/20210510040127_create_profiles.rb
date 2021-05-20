class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.integer :gender, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end