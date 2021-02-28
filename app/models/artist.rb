class Artist < ApplicationRecord
	has_many :song_artists
	has_many :songs, through: :song_artists
	has_many :likes, as: :likeable

	before_save :format_name, if: :will_save_change_to_name?

	private

	def format_name
			self.name = name.titleize
	end
end
