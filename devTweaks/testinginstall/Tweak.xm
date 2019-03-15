
%hook SBLockScreenViewController
-(void)viewDidAppear {
  %orig
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"b1ackzi0n" message:@"Tweak Installed Successfully" delegate:nil cancelButtonTitle:@"OK" otherButtonTItles:nil];
  [alert show];
  [alert release];
}
%end
