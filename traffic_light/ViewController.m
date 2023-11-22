//
//  ViewController.m
//  traffic_light
//
//  Created by Celestial on 26/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    _scoreInt=0;
    
}


- (IBAction)startAndStopButton:(id)sender 
{
    if(_scoreInt==0)
    {
        _timeInt=3;
        self.trafficLight.image=[UIImage imageNamed:@"trafficLight.png"];
        _timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        self.startButtonOutlet.enabled=NO;
        [self.startButtonOutlet setTitle:@"" forState:UIControlStateNormal];
        self.scoreLabel.text=[NSString stringWithFormat:@"%i",_scoreInt];
    }
    else
    {
        [_scoreTimer invalidate];
        [self.startButtonOutlet setTitle:@"Restart" forState:UIControlStateNormal];
    }
    if(_timeInt==0)
    {
        _scoreInt=0;
        _timeInt=3;
    }
}


-(void)startCounter
{
    _timeInt-=1;
    if(_timeInt==2)
    {
        self.trafficLight.image=[UIImage imageNamed:@"trafficLight3.png"];
    }
    else if(_timeInt==1)
    {
        self.trafficLight.image=[UIImage imageNamed:@"trafficLight2.png"];
    }
    else if(_timeInt==0)
    {
        self.trafficLight.image=[UIImage imageNamed:@"trafficLight1.png"];
        [_timer invalidate];
        self.startButtonOutlet.enabled=YES;
        _scoreTimer=[NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
        [self.startButtonOutlet setTitle:@"Stop" forState:UIControlStateNormal];

    }
}

-(void)scoreCounter
{
    _scoreInt+=1;
    self.scoreLabel.text=[NSString stringWithFormat:@"%i",_scoreInt];
}
@end
