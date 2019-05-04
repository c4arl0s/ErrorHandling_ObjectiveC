//
//  main.m
//  ErrorHandling_ObjectiveC
//
//  Created by Carlos Santiago Cruz on 5/4/19.
//  Copyright © 2019 Carlos Santiago Cruz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *errorEncoding = nil;
        NSString *string = [NSString stringWithContentsOfFile:@"/tmp/test.txt"
                                                     encoding:NSUTF8StringEncoding
                                                        error:&errorEncoding];
        NSLog(@"the value of errorEncoding is: %@", errorEncoding);
        NSLog(@"the value of string is: %@", string);
    }
    return 0;
}
