extends AudioStreamPlayer

const level_music = preload("res://Audio/cave_music.mp3")

func _play_music(music: AudioStream, volume=-30.0):
	if stream == music:
		return
	stream = music
	volume_db = volume
	play()
	
func play_music_level():
	_play_music(level_music)
	
func _pause_music():
	stop()
