extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_text("Score: 0")
	get_node("/root/main/basket").connect("score_inc", self, "on_score_inc")

func on_score_inc(score):
	print("on_score_inc called")
	set_text("Score: "+str(score))