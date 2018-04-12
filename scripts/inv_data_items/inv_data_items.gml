//This Script stores item data

globalvar NAME, DESC, PRICE, EFFECT, NOTHING, HP_POTION, MP_POTION, SWORD, SHIELD, item;
//more for reminders but can be used for clarity
ID = 0;
NAME = 1;
DESC = 2;
PRICE = 3;
EFFECT = 4;

//ID of items
NOTHING = 0;
HP_POTION = 1;
MP_POTION = 2;
SWORD = 3;
SHIELD = 4;

//The data

item[0,0] = NOTHING;//The id
item[0,1] = "Nothing";//the name
item[0,2] = "Nothing"; //Description
item[0,3] = 0;//Price -- may not be used in our game??? otherwise always 0
item[0,4] = 0;//Effect (healing, +stats etc.)

item[1,0] = HP_POTION;//The id
item[1,1] = "Tonic";//the name (trying to give some sort of steampunk feeling names here)
item[1,2] = "Increase current health by 5"; //Description -- numbers can always be changed
item[1,3] = 0;//Price -- may not be used in our game??? otherwise always 0
item[1,4] = 5;//Effect (healing, +stats etc.)

//not sure if we need this one? depends on how skills work out
item[2,0] = MP_POTION;//The id
item[2,1] = "Ether";//the name
item[2,2] = "Increase current Mana by 5"; //Description
item[2,3] = 0;//Price 
item[2,4] = 5;//Effect (healing, +stats etc.)

item[3,0] = SWORD;//The id
item[3,1] = "Bronze Sword";//the name
item[3,2] = "A simple sword"; //Description
item[3,3] = 0;//Price 
item[3,4] = 5;//Effect (healing, +stats etc.)

item[4,0] = SHIELD;//The id
item[4,1] = "Tin Shield";//the name
item[4,2] = "A simple shield"; //Description
item[4,3] = 0;//Price 
item[4,4] = 5;//Effect (healing, +stats etc.)