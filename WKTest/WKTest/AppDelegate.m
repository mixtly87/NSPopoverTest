//
//  AppDelegate.m
//  WKTest
//
//  Created by Marko Cicak on 4/3/18.
//  Copyright © 2018 Marko Cicak. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"


@implementation AppDelegate

- (void) applicationDidFinishLaunching:(NSNotification*)aNotification
{
    NSLog(@"DID FINISH");
    _popover = NSPopover.new;
    _popover.appearance = [NSAppearance appearanceNamed:NSAppearanceNameAqua];
    ViewController* vc = ViewController.new;

    _popover.contentViewController = vc;
    _popover.animates = YES;
    _popover.behavior = NSPopoverBehaviorTransient;

    _statusItem = [NSStatusBar.systemStatusBar statusItemWithLength:24];
    _statusItem.button.target = self;
    _statusItem.button.action = @selector(showContextMenu:);
    [_statusItem sendActionOn:NSEventMaskLeftMouseUp | NSEventMaskRightMouseUp];

    _statusMenu = NSMenu.new;
    [_statusMenu addItem:[NSMenuItem.alloc initWithTitle:@"Close" action:@selector(closeApp) keyEquivalent:@""]];
}

- (void) closeApp
{
    NSLog(@"TERMINATE");
    [NSApp terminate:nil];
}

- (void) showContextMenu:(NSStatusBarButton*)sender
{
    NSLog(@"SHOW MENU");
    switch (NSApp.currentEvent.type)
    {
        case NSEventTypeRightMouseUp:
        {
            NSLog(@"POPUP STATUS MENU");
            [_statusItem popUpStatusItemMenu:_statusMenu];
            break;
        }
        default:
        {
            NSLog(@"CASE DEFAULT");
            [_popover showRelativeToRect:NSZeroRect ofView:self.statusItem.button preferredEdge:NSMinYEdge];
            break;
        }
    }
}

- (void) applicationWillTerminate:(NSNotification*)aNotification
{
    // Insert code here to tear down your application
}

@end
