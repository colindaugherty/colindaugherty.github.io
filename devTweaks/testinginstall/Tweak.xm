
%hook SBLockScreenViewController
-(void)viewDidAppear {
  UIAlertController *alertController = [UIAlertController  alertControllerWithTitle:@"b1ackzi0n"  message:@"Tweak installed successfully"  preferredStyle:UIAlertControllerStyleAlert];

  [alertController addAction:[
    UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
      [self dismissViewControllerAnimated:YES completion:nil];
    }
  ]
  ];

  [self presentViewController:alertController animated:YES completion:nil];

  %orig; // call normal function so SpringBoard loads.
}
%end
