//
//  AppDelegate.h
//  WKTest
//
//  Created by Marko Cicak on 4/3/18.
//  Copyright © 2018 Marko Cicak. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property(nonatomic, strong) NSPopover* popover;
@property(nonatomic, strong) NSStatusItem* statusItem;
@property(nonatomic, strong) NSMenu* statusMenu;

@end

