resource "spotify_playlist" "base_playlist" {
  name = "base_playlist"

  tracks = flatten([
    for i in data.spotify_search_track.my_playlist : i.tracks[*].id
  ])
  
}