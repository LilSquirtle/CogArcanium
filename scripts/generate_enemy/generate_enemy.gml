mon = instance_find(combatant_object,0);
mon.c_name = argument1;
mon.c_level = argument0;
event_perform(ev_user0,0);