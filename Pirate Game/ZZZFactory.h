//
//  ZZZFactory.h
//  Pirate Game
//
//  Created by Brady Lewis on 4/22/14.
//
//

#import <Foundation/Foundation.h>
#import "ZZZCharacter.h"
#import "ZZZBoss.h"

@interface ZZZFactory : NSObject

-(NSArray *)tiles;
-(ZZZCharacter *)character;
-(ZZZBoss *)boss;

@end
