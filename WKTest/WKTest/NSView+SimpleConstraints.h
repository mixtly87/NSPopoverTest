//
// Created by cicakmarko on 11/18/14.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSView (SimpleConstraints)

- (NSArray*) addFor:(NSDictionary*)views constraints:(NSString*)constraints;

- (NSArray*) addFor:(NSDictionary*)views metrics:(NSDictionary*)metrics constraints:(NSString*)constraints;

- (NSLayoutConstraint*) addConstraintCenterX:(NSView*)view;

- (NSLayoutConstraint*) addConstraintCenterY:(NSView*)view;

@end
