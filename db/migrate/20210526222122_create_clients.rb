class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.integer :kind, default: 0
      t.string :email
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :assumed_name
      t.string :corporate_name
      t.string :cnpj
      t.integer :status, default: 0
      t.integer :vehicles_count, default: 0
      t.integer :evaluations_count, default: 0

      t.timestamps
    end
  end
end
