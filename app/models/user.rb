class User < ApplicationRecord
	
	validates :username, uniqueness: true, format: { without: /\s/ }

end
