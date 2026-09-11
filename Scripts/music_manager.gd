extends AudioStreamPlayer

# Define your songs and their titles
var song_database = {
	"res://Resources/audio/sfx/Loops/track_1.ogg": "Prelude",
	"res://Resources/audio/sfx/Loops/track_2.ogg": "Ocean",
	"res://Resources/audio/sfx/Loops/track_3.ogg": "Wild West"
}

func play_new_song(song_path: String):
	# 1. Change the music track
	stream = load(song_path)
	play()
	
	# 2. Change the window title
	if song_database.has(song_path):
		DisplayServer.window_set_title(song_database[song_path])
	else:
		DisplayServer.window_set_title("Unknown Track")
