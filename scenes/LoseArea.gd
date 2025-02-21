extends Area2D

func _on_LoseArea_body_entered(body):
	if (body.name == "GreenShip"):
		print("You crashed!")
