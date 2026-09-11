extends AudioStreamPlayer



# Add your song files directly in the Inspector
@export var songs: Array[AudioStream] = []

func play_song_by_index(index: int):
	if index < songs.size() and index >= 0:
		if stream != songs[index]: # Prevents restarting the song if it's already playing
			stream = songs[index]
			play()

func play_song_by_name(song_name: String):
	# Alternatively, loop through an array where you check resource names
	for song in songs:
		if song.resource_path.get_file().get_basename() == song_name:
			if stream != song:
				stream = song
				play()
				

func _ready():
	# Switches to the second song in your array
	AudioPlayer.play_song_by_index(1)
