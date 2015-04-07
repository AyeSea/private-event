class User < ActiveRecord::Base
	validates :name, presence: true, length: { in: 5..30 }
	validates :email, presence: true, uniqueness: true,
										length: { in: 5.. 30 }

	has_many :events, :foreign_key => "creator_id"
	has_many :invitations, :foreign_key => :attendee_id
	has_many :attended_events, :through => :invitations 
end