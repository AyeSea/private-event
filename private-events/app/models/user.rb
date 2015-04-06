class User < ActiveRecord::Base
	validates :name, presence: true, length: { in: 5..30 }
	validates :email, presence: true, uniqueness: true,
										length: { in: 5.. 30 }
end