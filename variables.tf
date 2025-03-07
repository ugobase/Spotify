variable "api_key" {
  type = string
}

variable "song_selection" {
  type = list(object({
    artist = string
    name   = string
  }))
}