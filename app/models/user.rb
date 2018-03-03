class User < ApplicationRecord
	has_many :roles
	has_many :groups, through: :roles
end
