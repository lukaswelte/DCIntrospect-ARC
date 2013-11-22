//
//  DCIntrospect-ARC Example - CocoapodExampleTest.m
//  Copyright 2013 Lukas Welte. All rights reserved.
//
//  Created by: Lukas Welte
//

    // Class under test
#import "DCViewController.h"

    // Collaborators

    // Test support
#import <XCTest/XCTest.h>

// Uncomment the next two lines to use OCHamcrest for test assertions:
//#define HC_SHORTHAND
//#import <OCHamcrest/OCHamcrest.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockito/OCMockito.h>


@interface CocoapodExampleTest : XCTestCase
@end

@implementation CocoapodExampleTest
{
    // test fixture ivars go here
    DCViewController *vc;
}

- (void)setUp {
    [super setUp];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]];
    vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"DCViewController"];
    [vc view];
}

- (void)testAlwaysSucceed
{
    XCTAssert (YES, @"A always succeeding test");
}

- (void)testViewControllerShouldHaveLabel {
    XCTAssertNotNil(vc.pressSpaceToStartLabel, @"Press space to Start label is nil");
}

@end
