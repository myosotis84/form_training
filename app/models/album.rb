class Album < ApplicationRecord
	has_many :album_genres
	has_many :genres, through: :album_genres
	has_many :album_artists
	has_many :artists, through: :album_artists
	has_many :likes, as: :likeable

	before_save :format_title, if: :will_save_change_to_title?

	private

	def format_title
		self.title = title.titleize
	end
end
