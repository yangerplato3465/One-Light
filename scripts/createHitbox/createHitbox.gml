////@arg x
////@arg y
////@arg creator
////@arg sprite
////@arg knockback
////@arg lifespan
////@arg damage

var xPosition = argument0
var yPosition = argument1
var creator = argument2
var sprite = argument3
var knockback = argument4
var lifespan = argument5
var damage = argument6
var xscale = argument7


var hitbox = instance_create_layer(xPosition,yPosition,"Intance",oHitBox)

hitbox.sprite_index = sprite
hitbox.creator = creator
hitbox.knockback = knockback
hitbox.damage = damage
hitbox.alarm[0] = lifespan