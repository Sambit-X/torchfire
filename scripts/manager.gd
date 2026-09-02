extends Node2D

var status

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for torch in $Torches.get_children():
		torch.torch_lit.connect(_on_torch_lit)


func check_all_lit() -> bool:
	status = 0
	for i in $Torches.get_children():
		if i.get_node("AnimatedSprite2D").get_animation() == "lit":
			status += 1
	
	if($Torches.get_children().size() == status):
		return true
	
	return false

func _on_torch_lit() -> void:
	if check_all_lit() == true:
		$TextEdit.text = "You win"
		print("You win")
	else:
		$TextEdit.text = "Torches left:"  + str($Torches.get_children().size()-status)
