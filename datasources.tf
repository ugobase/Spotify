data "spotify_search_track" "my_playlist" {
  for_each = { for k, v in var.song_selection : k => v }
  limit    = 1
  artist   = each.value.artist
  name     = each.value.song
}
