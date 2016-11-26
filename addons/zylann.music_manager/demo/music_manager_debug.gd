extends Node2D


func _ready():
	set_process(true)


func _process(delta):
	update()


func _draw():
	var W = 16.0
	var H = 64.0
	
	draw_rect(Rect2(0,0, W*MusicManager.get_child_count(), H), Color(0,0,0))
	
	for i in range(0, MusicManager.get_child_count()):
		var child = MusicManager.get_child(i)
		if child extends StreamPlayer:
			var h = child.get_volume()*64.0
			var color
			if child.is_playing():
				color = Color(0,1,0)
			else:
				color = Color(1,0.5,0)
			draw_rect(Rect2(i*W, H-h, W, h), color)
