class TeamRole < ActiveRecord::Base
	belongs_to :publisher

	validates :publisher_id, presence: true
end
