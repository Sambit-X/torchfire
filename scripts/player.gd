extends CharacterBody2D

@export var speed = 30000
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	getInput(delta)
	move_and_slide()
	pass

func getInput(delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed * delta
