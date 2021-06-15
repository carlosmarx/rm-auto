class ClientSerializer < ActiveModel::Serializer
  attributes :id, :kind, :email, :name, :cpf, :rg, :assumed_name, :corporate_name, :cnpj, :status, :vehicles_count, :evaluations_count
end
