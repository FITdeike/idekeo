//
//  DK_GAOPAList.h
//  Ideko Themes
//
//  Created by deike on 2021/12/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DK_GAOPAList : NSObject

+ (NSMutableArray *)getApplistTWithFcc:(NSString *)fccStr withSpa:(NSString *)spaStr withplu:(NSString *)pluStr withCon:(NSString *)conStr withBund:(NSString *)bundStr;

@end

NS_ASSUME_NONNULL_END
