class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  has_one :profile
  accepts_nested_attributes_for :profile, reject_if: :all_blank, allow_destroy: false
  belongs_to :group, optional: true
  belongs_to :dealer, optional: true

    ## ENUMS
    enum kind: { admin: 0, manager: 1, seller: 2, administrator: 3, consulting: 4 }, _prefix: :kind

end
