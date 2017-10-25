extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
var tapped=false

func _draw():

    var r = Rect2( Vector2(), get_size() )
    if (tapped):
        draw_rect(r, Color(1,0,0) )
    else:
        draw_rect(r, Color(0,0,1) )

func _input_event(ev):

    if (ev.type==InputEvent.MOUSE_BUTTON and ev.pressed):
        get_tree().change_scene("res://main_scenes/game/game.tscn")
