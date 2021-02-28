User.create!([
  {email: "mama@test.com", password: "azerty", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first_name: "", last_name: "", username: "mama-pizza"}
])
Artist.create!([
  {name: "The Hound & The Fox"}
])
Album.create!([
  {title: "Songs Of Winter"}
])
AlbumArtist.create!([
  {album_id: 1, artist_id: 1}
])
Song.create!([
  {title: "What Child Is This", duration: 194400, album_id: 1}
])
Like.create!([
  {user_id: 1, likeable_type: "Song", likeable_id: 1}
])
SongArtist.create!([
  {artist_id: 1, song_id: 1}
])
