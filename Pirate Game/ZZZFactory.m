//
//  ZZZFactory.m
//  Pirate Game
//
//  Created by Brady Lewis on 4/22/14.
//
//

#import "ZZZFactory.h"
#import "ZZZTile.h"

@implementation ZZZFactory

-(NSArray *)tiles
{
    ZZZTile *tile1 = [[ZZZTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage.  You must stop the evil pirate boss.  Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    ZZZWeapon *bluntedSword = [[ZZZWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    ZZZTile *tile2 = [[ZZZTile alloc] init];
    tile2.story = @"You have come across an armory.  Would you like to upgrad your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    ZZZArmor *steelArmor = [[ZZZArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take the armor";

    
    ZZZTile *tile3 = [[ZZZTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon.  Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";


    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    ZZZTile *tile4 = [[ZZZTile alloc] init];
    tile4.story = @"You have found a parrot.  This can be used in your armor slot.  Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    ZZZArmor *parrotArmor = [[ZZZArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.armor = parrotArmor;
    tile4.actionButtonName = @"Adopt parrot";


    
    ZZZTile *tile5 = [[ZZZTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons.  Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    ZZZWeapon *pistolWeapon = [[ZZZWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"Use pistol";


    
    ZZZTile *tile6 = [[ZZZTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";


    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    ZZZTile *tile7 = [[ZZZTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off of the coast.  Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";


    
    ZZZTile *tile8 = [[ZZZTile alloc] init];
    tile8.story = @"The legend of the deep.  The might kraken appears.";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandone ship";


    
    ZZZTile *tile9 = [[ZZZTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasure.";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take treasure";


    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    ZZZTile *tile10 = [[ZZZTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel invaders";


    
    ZZZTile *tile11 = [[ZZZTile alloc] init];
    tile11.story = @"In the deep of the sea, many things live and many things can be found.  Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";


    
    ZZZTile *tile12 = [[ZZZTile alloc] init];
    tile12.story = @"Your final face off with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";


    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
    
}

-(ZZZCharacter *)character
{
    ZZZCharacter *character = [[ZZZCharacter alloc] init];
    character.health = 100;
    ZZZArmor *armor = [[ZZZArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    ZZZWeapon *weapon = [[ZZZWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(ZZZBoss *)boss
{
    ZZZBoss *boss = [[ZZZBoss alloc] init];
    boss.health = 65;
    return boss;
}


@end
