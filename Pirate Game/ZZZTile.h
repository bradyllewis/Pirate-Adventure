//
//  ZZZTile.h
//  Pirate Game
//
//  Created by Brady Lewis on 4/22/14.
//
//

#import <Foundation/Foundation.h>
#import "ZZZWeapon.h"
#import "ZZZArmor.h"

@interface ZZZTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) ZZZWeapon *weapon;
@property (strong, nonatomic) ZZZArmor *armor;
@property (nonatomic) int healthEffect;



@end
