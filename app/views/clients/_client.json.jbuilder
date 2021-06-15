json.extract! client, :id, :kind, :email, :name, :cpf, :rg, :assumed_name, :corporate_name, :cnpj, :status, :vehicles_count, :evaluations_count, :created_at, :updated_at
json.url client_url(client, format: :json)
