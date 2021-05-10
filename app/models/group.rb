class Group < ApplicationRecord
   has_many :dealers, class_name: "dealer", foreign_key: "group_id"
   ## ENUMS
   enum status: { waiting: 0, enabled: 1, disabled: 2 }, _prefix: :status
end
