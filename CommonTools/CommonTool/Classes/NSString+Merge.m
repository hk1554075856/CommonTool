//
//  NSString+Merge.m
//  DJB_PW_Player
//
//  Created by 郑浩然 on 2017/9/11.
//  Copyright © 2017年 一个很帅的人. All rights reserved.
//

#import "NSString+Merge.h"

@implementation NSString (Merge)
//将int转换成 str
NSString *SJStringWithFormat(NSInteger index) {
    if (!index) {
        return @"";
    }
    return [NSString stringWithFormat:@"%ld",(long)index];
}

NSString *SJStringWithFlostFormat(CGFloat index) {
    if (!index) {
        return @"";
    }
    return [NSString stringWithFormat:@"%f",index];
}
//拼接字符串
NSString *SJStringWithPickFormat(NSString *keyStr, NSString *keyValue) {
    return [NSString stringWithFormat:@"%@%@",keyStr,keyValue];
}

NSString *OBCutFloatValueLength(NSString *string) {
//    NSString *formatStr = [NSString stringWithFormat:@"%"]
    //
//    NSString* format = [NSString stringWithFormat:@"%%.%ldf",(long)[SystemConfig sharedSystemConfig].floatValueLength.integerValue];
//    NSString *str = [NSString stringWithFormat:format,string.floatValue];
    return @"111";
}


/**
 显示占位符

 @param string string
 @return 是否显示占位符
 */
NSString *OBStarPlaceholder(NSString *string) {
//    if (string) {
//        BOOL isHide =SystemConfig.sharedSystemConfig.OBStarPlaceholder;
//        if (isHide) {
//            string = @"*****";
//        }
//    }
    return @"111";
}

// 判断输入字符是否有中文
- (BOOL)isIncludeChineseInString:(NSString*)str {
    for (int i=0; i<str.length; i++) {
        unichar ch = [str characterAtIndex:i];
        if (0x4E00 <= ch  && ch <= 0x9FA5) {
            return YES;
        }
    }
    return NO;
}
+ (BOOL)effectivePassword:(NSString *)str {
    NSString *regex = @"^[A-Za-z0-9\u4e00-\u9fa5]{2,13}";
    return [self isfiileStr:regex word:str];
}
//判断是否是纯数字
+ (BOOL)isNumberWord:(NSString *)str {
    NSString *regex = @"^[0-9]{3,12}";
    return [self isfiileStr:regex word:str];
}

+ (NSString*)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

+ (BOOL)isChineseCharacters:(NSString *)str {
    NSString *regex = @"^[\u4e00-\u9fa5]}";
    return [self isfiileStr:regex word:str];
}

//验证码
+ (BOOL)isNumberYanZhengMWord:(NSString *)str {
    if ([str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]) {
        return YES;
    }
    NSString *regex = @"^[0-9]{4}";
    return [self isfiileStr:regex word:str];
}
// 检测是否为空字符串
- (BOOL)isBlankString {
    return !self.filtrateString.length;
}
+ (BOOL)isNumberWord:(NSString *)str zbds:(NSString *)zz {
    if ([str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]) {
        return YES;
    }
    NSString *regex = SJStringWithPickFormat(@"^[0-9]", zz);
    return [self isfiileStr:regex word:str];
}
// 删除空格和换行
- (NSString *)filtrateString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+ (BOOL)isfiileStr:(NSString *)regex word:(NSString *)str {
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:str];
}

+ (BOOL)simpleVerifyIdentityCardNum:(NSString *)str {
    NSString *regex2 = @"^(\\\\d{14}|\\\\d{17})(\\\\d|[xX])$";
    return [self isfiileStr:regex2 word:str];
}

+ (BOOL)isNumberEnglshWord:(NSString *)str zbds:(NSString *)zz {
    if ([str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]) {
        return YES;
    }
    NSString *regex = SJStringWithPickFormat(@"^[A-Za-z0-9]", zz);
    return [self isfiileStr:regex word:str];
    
}

@end
