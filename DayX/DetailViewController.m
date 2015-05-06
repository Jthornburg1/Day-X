//
//  DetailViewController.m
//  DayX
//
//  Created by Gamaliel Tellez on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController () <UITextFieldDelegate,UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    [self updateWithEntry:self.entry];
    
}

-(void)dismissKeyboard {
    [self.textView resignFirstResponder];
    [self.detailTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)clearTextViewButton:(id)sender {
    
    self.textView.text = @"";
}
- (IBAction)saveButtonTapped:(id)sender {
    [self.textView resignFirstResponder];
    
    if (self.entry) {
        self.entry.title = self.detailTextField.text;
        self.entry.bodyText = self.textView.text;
    }
    else {
        self.entry = [[EntryController sharedInstance] createEntryWithTittle:self.detailTextField.text withBodyText:self.textView.text];
    }
       
    //self.entry = [[EntryController sharedInstance] createEntryWithTittle:self.detailTextField.text withBodyText:self.textView.text];
}
- (BOOL)updateWithEntry:(Entry*) entry{
    self.detailTextField.text = entry.title;
    self.textView.text = entry.bodyText;
    
    return YES;
}

//- (IBAction)doneButtonTapped:(id)sender {
//    [self.textView resignFirstResponder];
//    [self.detailTextField resignFirstResponder];
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
