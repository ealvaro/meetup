class Role < ApplicationRecord
  belongs_to :user
  belongs_to :group
  
  validates :name, presence: true
  scope :organizer, -> (groupid) { where("name IN ('Organizer') AND group_id = ?", groupid) }

end
