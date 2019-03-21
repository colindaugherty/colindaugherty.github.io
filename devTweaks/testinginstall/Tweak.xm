@interface SBHomeScreenViewController : UIView
@end

%hook SBHomeScreenViewController

- (void)viewDidLoad {
    %orig;

    UIAlertView *alertTestInstall = [[UIAlertView alloc]
        initWithTitle:@"TestingInstall"
        message:@"Tweak installed successfully!\nv0.1.7"
        delegate:self
        cancelButtonTitle:@"Thanks b1z0!"
        otherButtonTitles:nil];
    [alertTestInstall show];
}
%end
