with argument0{
switch type{
case 1: atk = 5; maxhp = 30; scalingatk = 0; living = 1;break;
case 2: atk = 10; maxhp = 12; living = 1; melee = 1; break;
case 3: atk = 6; maxhp = 10; living = 1; break;
case 4: atk = 5; maxhp = 20; living = 1; melee = 1;break;
case 5: atk = 3; maxhp = 6; living = 1; missiles = 1; melee = 1;break;
case 6: atk = 10; maxhp = 16; break;
case 7: atk = 6; maxhp = 12; living = 1; missiles = 1; break;
case 8: atk = 0; maxhp = 15; captureable = 1; break;
case 9: atk = 0; maxhp = 10; break;
case 10: atk = 0; maxhp = 12; captureable = 1; break;
case 11: atk = 6; maxhp = 15; scalingatk = 0; missiles = 1; captureable = 1; break;
case 12: atk = 7; maxhp = 15; water = 1; missiles = 1; melee = 1; break;
case 13: atk = 9; maxhp = 18; water = 1; missiles = 1; break;
case 14: atk = 0; maxhp = 15; water = 1; captureable = 1; break;
case 15: atk = 3; maxhp = 10; water = 1; melee = 1; break;
case 16: atk = 0; maxhp = 10; water = 1; break;
case 17: atk = 10; maxhp = 15; water = 1; missiles = 1; break;
case 18: atk = 7; maxhp = 12; flying = 1; missiles = 1; break;
case 19: atk = 12; maxhp = 12; flying = 1; missiles = 1; break;
case 20: atk = 0; maxhp = 12; flying = 1; break;
case 21: atk = 0; maxhp = 15; captureable = 1; break;
case 22: atk = 9; maxhp = 20; flying = 1; scalingatk = 0; missiles = 1; living = 1; break;
case 23: atk = 1; maxhp = 5; scalingatk = 0; living = 1; break;
default: return 0; break;
}
}
