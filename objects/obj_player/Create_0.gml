/// @description Player Setup
facing = 1
xSpeed = 1.5
ySpeed = 2
ySpeedMax = 2
canJump = false
drill = instance_create_depth(x,y,-1000,obj_dirt_drill)
drill.master = self

camera = instance_create_depth(x,y,-200,obj_camera);
camera.player = self
camera.follow = self


playerMouse = instance_create_depth(x,y,-200,obj_mouse)
playerMouse.player = self

inventory = instance_create_depth(x,y,-200,obj_inventory)
inventory.player = self



playerCrafting = instance_create_depth(x+BLOCK_SIZE*2,y-BLOCK_SIZE,-50,obj_crafting);
playerCrafting.player = self

collector = instance_create_depth(x-BLOCK_SIZE*4,y-BLOCK_SIZE,-50,obj_collector)
collector.player = self




//Gives player starting material for now



alarm_set(0,2)