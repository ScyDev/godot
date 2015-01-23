
extends Spatial

# this demonstrates how a recursive reference in an array/dictionary will crash the game
# will prevent print() output and will prevent reaching breakpoints, in both cases even before the recursive reference is accessed
# try setting a breakpoint at line 26
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
	
	line1["intersects"] = [line2]
	line2["intersects"] = [line1]
	
	poly.push_back(line1)
	poly.push_back(line2)
	
	print("before poly")
	print(poly)
	print("after poly")
	

