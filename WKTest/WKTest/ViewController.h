//
//  ViewController.h
//  WKTest
//
//  Created by Marko Cicak on 4/3/18.
//  Copyright © 2018 Marko Cicak. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ViewController : NSViewController
@property(nonatomic, strong) NSTextField* textField;
@property(nonatomic, strong) WKWebView* webView;
@end
