//
//  ViewController.h
//  traffic_light
//
//  Created by Celestial on 26/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property NSTimer *timer;
@property NSTimer *scoreTimer;
@property int timeInt;
@property int scoreInt;


@property (weak, nonatomic) IBOutlet UIImageView *trafficLight;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButtonOutlet;

- (IBAction)startAndStopButton:(id)sender;

@end

