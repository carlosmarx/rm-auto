class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :status, :default => 0
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
