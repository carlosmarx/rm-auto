class Dealer < ApplicationRecord
  belongs_to :group

  ## ENUMS
  enum status: { waiting: 0, enabled: 1, disabled: 2 }, _prefix: :status

  validates :group, presence: true
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  
  
  
  
end
