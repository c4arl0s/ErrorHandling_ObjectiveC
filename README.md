# ErrorHandling_ObjectiveC
ErrorHandling_ObjectiveC

``` objective-c
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
```

``` console
2019-05-04 09:06:08.019145-0600 ErrorHandling_ObjectiveC[36003:2087645] the value of errorEncoding is: Error Domain=NSCocoaErrorDomain Code=260 "The file “test.txt” couldn’t be opened because there is no such file." UserInfo={NSFilePath=/tmp/test.txt, NSUnderlyingError=0x100619c80 {Error Domain=NSPOSIXErrorDomain Code=2 "No such file or directory"}}
2019-05-04 09:06:08.019503-0600 ErrorHandling_ObjectiveC[36003:2087645] the value of string is: (null)
Program ended with exit code: 0
```

### let's create a txt file in /tmp to know what errorEncoding get after the method.

``` bash
touch /tmp/test.txt
echo "hola mundo" > /tmp/test.txt
```


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
        NSLog(@"the value of errorEncoding is: %@", errorEncoding);
        NSLog(@"the value of string is: %@", string);
    }
    return 0;
}
```


``` console
2019-05-04 09:09:13.916554-0600 ErrorHandling_ObjectiveC[36020:2090540] the value of errorEncoding is: (null)
2019-05-04 09:09:13.917252-0600 ErrorHandling_ObjectiveC[36020:2090540] the value of string is: hola mundo
Program ended with exit code: 0
```

