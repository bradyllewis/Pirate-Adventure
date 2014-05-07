//
//  ZZZCharacter.h
//  Pirate Game
//
//  Created by Brady Lewis on 4/24/14.
//
//

#import <Foundation/Foundation.h>
#import "ZZZArmor.h"
#import "ZZZWeapon.h"

@interface ZZZCharacter : NSObject

@property (strong, nonatomic) ZZZArmor *armor;
@property (strong, nonatomic) ZZZWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
