/// @description Player Setup



facing = 1
xSpeed = 1.5
ySpeed = 2
ySpeedMax = 2
canJump = false

playerMouse = instance_create_depth(x,y,100,obj_mouse)
playerMouse.player = self
playerInventory = instance_create_depth(x,y,100,obj_inventory)
playerInventory.player = self
playerCamera = instance_create_depth(x,y,100,obj_camera);
playerCamera.player = self
playerCrafting = instance_create_depth(x,y,100,obj_crafting);
playerCrafting.player = self



drill = instance_create_depth(x,y,-1000,obj_dirt_drill)


//Gives player starting material for now



alarm_set(0,2)