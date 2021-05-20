class Profile < ApplicationRecord
  belongs_to :user

  #Enums
  enum gender: { male: 0, female: 1, other: 2 }, _prefix: :kind

  def full_name
    [self.first_name, self.last_name].join(' ')
  end
end
