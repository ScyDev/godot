
extends Spatial

# this demonstrates how a recursive reference in an array/dictionary will make
# a comparision of references fail, even though it should return true
func _ready():
	var poly = []
	
	var line1 = {}
	line1["start"] = Vector2(1.23456, 5.21346)
	line1["end"] = Vector2(3.23456, 1.21346)
	line1["crossed"] = true
	
	var line2 = {}
	line2["start"] = Vector2(5.21346, 1.23456)
	line2["end"] = Vector2(1.21346, 3.23456)
	line2["crossed"] = true
	
	var poly2 = poly
	var poly3 = poly
	
	line1["intersects"] = [line2]
	line2["intersects"] = [line1]
	
	poly.push_back(line1)
	poly.push_back(line2)
	
	if (poly2 == poly3):
		print("SAME SAME")
	
	print("done")
	

