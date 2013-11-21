//
//  Example - ExampleTest.m
//  Copyright 2013 Lukas Welte. All rights reserved.
//
//  Created by: Lukas Welte
//

    // Collaborators

    // Test support
#import <XCTest/XCTest.h>

// Uncomment the next two lines to use OCHamcrest for test assertions:
//#define HC_SHORTHAND
//#import <OCHamcrest/OCHamcrest.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockito/OCMockito.h>


@interface ExampleTest : XCTestCase
@end

@implementation ExampleTest
{
    // test fixture ivars go here
}

- (void)testAlwaysSucceed
{
    XCTAssert (YES, @"A always succeeding test");
}

@end
