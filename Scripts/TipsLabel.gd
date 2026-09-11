extends Label

var tooltips: Array[String] = [
	"Just tap to the rhythm and follow the beat!",
	"DId you know? That Dancing Ball was originally made by BoomBit and was co-developed by Cheetah Mobile?",
	"The 10th anniversary of Dancing Ball is coming soon!",
	"Try to experience other games like Dancing Line and Rolling Sky!",
	"Senpai~! try this game and you get free access to our beta platforms~!",
	"Dont forget to take a rest too! Its important to rest rather than overworking yourself to this game!"

]

func _ready() -> void:
  var choice: String = tooltips.pick_random();
  text = choice; # just calling 'text' since this class already extends Label
