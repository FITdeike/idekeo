//
//  DK_GAOPAList.m
//  Ideko Themes
//
//  Created by deike on 2021/12/29.
//

#import "DK_GAOPAList.h"

@implementation DK_GAOPAList

+ (NSMutableArray *)getApplistTWithFcc:(NSString *)fccStr withSpa:(NSString *)spaStr withplu:(NSString *)pluStr withCon:(NSString *)conStr withBund:(NSString *)bundStr {
    NSMutableArray *arr = NSMutableArray.new;
#pragma diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    id space = [NSClassFromString(fccStr) performSelector: NSSelectorFromString(spaStr)];

    NSArray *plugins = [space performSelector: NSSelectorFromString(pluStr)];
    NSMutableSet *list = NSMutableSet.new;

    for (id plugin in plugins) {
        id bundle = [plugin performSelector: NSSelectorFromString(conStr)];
        if (bundle)
            [list addObject:bundle];
    }
    for (id plugin in list) {
        [arr addObject:[plugin performSelector: NSSelectorFromString(bundStr)]];
    }
#pragma clang diagnostic pop
    return arr;
}

@end
