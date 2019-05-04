# ErrorHandling_ObjectiveC
ErrorHandling_ObjectiveC

``` objective-c
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
        // methods returns nil on error
        if (string == nil) {
            NSLog(@"%@", errorEncoding);
        }
        // if the method returns and error, set the variable errorEncoding
    }
    return 0;
}
```

``` console
2019-05-04 08:46:02.709316-0600 ErrorHandling_ObjectiveC[35817:2068277] Error Domain=NSCocoaErrorDomain Code=260 "The file “test.txt” couldn’t be opened because there is no such file." UserInfo={NSFilePath=/tmp/test.txt, NSUnderlyingError=0x100705fb0 {Error Domain=NSPOSIXErrorDomain Code=2 "No such file or directory"}}
Program ended with exit code: 0
```


