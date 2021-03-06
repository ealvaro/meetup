class Group < ApplicationRecord
	require 'csv'
	validates :name, presence: true
	has_many :roles
	has_many :users, through: :roles

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			# byebug
			hsh = row.to_hash
			transaction do
				u = User.find_by(last_name: hsh["last_name"])  #TODO find by full name
				if u.nil?
					u = User.new(first_name: hsh["first_name"], last_name: hsh["last_name"])
					u.save!
				end
				g = Group.find_by(name: hsh["group_name"])
				if g.nil?
					g = Group.new(name: hsh["group_name"])
					g.save!
				end
				r = Role.where("group_id = ? AND user_id = ?", g.id, u.id)
				if r.count == 0
					Role.new(name: hsh["role"], user_id: u.id, group_id: g.id).save!
				end
			end
		end
	end

end
