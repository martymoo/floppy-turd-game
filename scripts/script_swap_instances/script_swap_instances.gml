// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_swap_instances(argument0, argument1){

var a = argument0;
var b = argument1;

var obj_a = ds_list_create();
var obj_b = ds_list_create();

with (a) ds_list_add(obj_a, id);
with (b) ds_list_add(obj_b, id);

for(var i = 0; i < ds_list_size(obj_a); i++)
{
    //uses with to go into the scope of each individual instance saved to the list using the list accessor
    with(obj_a[| i]) instance_change(b, true);
}

for(var i = 0; i < ds_list_size(obj_b); i++)
{
    with(obj_b[| i]) instance_change(a, true);
}

ds_list_destroy(obj_a);
ds_list_destroy(obj_b);



}