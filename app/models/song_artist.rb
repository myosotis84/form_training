class SongArtist < ApplicationRecord
  belongs_to :artist
  belongs_to :song

  validates_uniqueness_of :artist_id, scope: :song_id

end
