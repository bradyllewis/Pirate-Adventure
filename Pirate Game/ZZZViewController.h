//
//  ZZZViewController.h
//  Pirate Game
//
//  Created by Brady Lewis on 4/22/14.
//
//

#import <UIKit/UIKit.h>
#import "ZZZCharacter.h"
#import "ZZZBoss.h"

@interface ZZZViewController : UIViewController
//Instance Variables
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) ZZZCharacter *character;
@property (strong, nonatomic) ZZZBoss *boss;

//IBOutlets

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLable;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;

//IBActions
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(id)sender;




@end
