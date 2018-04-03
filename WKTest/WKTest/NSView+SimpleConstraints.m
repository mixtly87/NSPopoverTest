//
// Created by cicakmarko on 11/18/14.
//

#import "NSView+SimpleConstraints.h"


@implementation NSView (SimpleConstraints)

- (NSArray*) addFor:(NSDictionary*)views constraints:(NSString*)constraints
{
    return [self addFor:views metrics:nil constraints:constraints];
}

- (NSArray*) addFor:(NSDictionary*)views metrics:(NSDictionary*)metrics constraints:(NSString*)constraints
{
    NSArray* layoutConstraints =
            [NSLayoutConstraint constraintsWithVisualFormat:constraints options:0 metrics:metrics views:views];
    [self addConstraints:layoutConstraints];
    return layoutConstraints;
}

- (NSLayoutConstraint*) addConstraintCenterX:(NSView*)view
{
    NSLayoutConstraint* constraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint*) addConstraintCenterY:(NSView*)view
{
    NSLayoutConstraint* constraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

@end
