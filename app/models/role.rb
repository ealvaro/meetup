class Role < ApplicationRecord
  belongs_to :user
  belongs_to :group

  scope :organizer, ->(groupid) {where("roles.name IN ('Organizer') AND group_id = #{groupid}")}

end
