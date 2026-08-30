extends StaticBody2D

signal torch_lit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print($AnimatedSprite2D.sprite_frames.get_animation_names())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == self:
		return
	
	$AnimatedSprite2D.play("lit")
	torch_lit.emit()
	pass # Replace with function body.
