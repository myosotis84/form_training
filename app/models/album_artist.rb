class AlbumArtist < ApplicationRecord
  belongs_to :album
  belongs_to :artist

  validates_uniqueness_of :artist_id, scope: :album_id

end
