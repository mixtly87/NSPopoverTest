//
//  ViewController.m
//  WKTest
//
//  Created by Marko Cicak on 4/3/18.
//  Copyright © 2018 Marko Cicak. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "ViewController.h"
#import "NSView+SimpleConstraints.h"

@implementation ViewController

- (void) loadView
{
    NSLog(@"LOAD VIEW");
    self.view = NSView.new;
    self.view.translatesAutoresizingMaskIntoConstraints = NO;

    [self.view addSubview:self.textField];
    [self.view addSubview:self.webView];

    id v = @{ @"web": self.webView, @"text": self.textField };
    [self.view addFor:v constraints:@"|[web]|"];
    [self.view addFor:v constraints:@"|-15-[text]-15-|"];
    [self.view addFor:v constraints:@"V:|-5-[text(50)]-10-[web]|"];

    [self.view addConstraint:[NSLayoutConstraint
            constraintWithItem:self.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual
                        toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:500]];
    [self.view addConstraint:[NSLayoutConstraint
            constraintWithItem:self.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual
                        toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:750]];
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    NSURL* url = [NSURL URLWithString:@"https://www.google.com"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (NSTextField*) textField
{
    if (!_textField)
    {
        _textField = NSTextField.new;
        _textField.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _textField;
}

- (WKWebView*) webView
{
    if (!_webView)
    {
        _webView = WKWebView.new;
        _webView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _webView;
}

@end
