class AddColumnsGroupDealerKindToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :group, null: true, foreign_key: false
    add_reference :users, :dealer, null: true, foreign_key: false
    add_column :users, :kind, :integer, default: 0
    #Ex:- :default =>''
  end
end
