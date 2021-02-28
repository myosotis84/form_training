class Song < ApplicationRecord
    belongs_to :album
    has_many :song_artists
    has_many :artists, through: :song_artists
    has_many :likes, as: :likeable

    before_save :format_title, if: :will_save_change_to_title?

    private

    def format_title
        self.title = title.titleize
    end
end
