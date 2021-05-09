class Group < ApplicationRecord

   ## ENUMS
   enum status: { waiting: 0, enabled: 1, disabled: 2 }, _prefix: :status
end
