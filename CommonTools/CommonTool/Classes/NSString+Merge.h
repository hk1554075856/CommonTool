//
//  NSString+Merge.h
//  DJB_PW_Player
//
//  Created by 郑浩然 on 2017/9/11.
//  Copyright © 2017年 一个很帅的人. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Merge)
/**
 *  int 转换成string
 */
NSString *SJStringWithFormat(NSInteger index);

/**
 flast 转string

 @param index float
 @return String
 */
NSString *SJStringWithFlostFormat(CGFloat index);
/**
 *  拼接两个字符串
 *
 *  @param keyStr   前边
 *  @param keyValue 后边
 */
NSString *SJStringWithPickFormat(NSString *keyStr, NSString *keyValue);


/**
 是否显示占位符

 @param string string
 @return string
 */
NSString *OBStarPlaceholder(NSString *string);
/**
 截取小数点

 @param string 字符串
 @return 截取系统保留字符串个数
 */
NSString *OBCutFloatValueLength(NSString *string);

// 判断输入字符是否有中文
- (BOOL)isIncludeChineseInString:(NSString*)str;

/**
 dic 转 json

 @param dic dict
 @return jsonString
 */
+ (NSString*)dictionaryToJson:(NSDictionary *)dic;

/**
 登录密码设置

 @param str 登录密码
 @param zz 正则表达式
 @return yes
 */
+ (BOOL)isNumberEnglshWord:(NSString *)str zbds:(NSString *)zz;

/**
 判断是否是汉字

 @param str 内容
 @return yes
 */
+ (BOOL)isChineseCharacters:(NSString *)str;

/**
 判断有没有特殊字符

 @param str 数组
 @return yes no
 */
+ (BOOL)effectivePassword:(NSString *)str;


/**
 验证验证码

 @param str 验证码
 @return yes
 */
+ (BOOL)isNumberYanZhengMWord:(NSString *)str;

/**
 验证是否是数字

 @param str 内容
 @param zz 正则表达式
 @return yes
 */
+ (BOOL)isNumberWord:(NSString *)str zbds:(NSString *)zz;

/**
 验证身份证

 @param str 呢绒
 @return yes
 */
+ (BOOL)simpleVerifyIdentityCardNum:(NSString *)str;
/**
 *  检测是否为空字符串
 */
- (BOOL)isBlankString;

/**
 判断是否是纯数字

 @param str 数字
 @return ye
 */
+ (BOOL)isNumberWord:(NSString *)str;

/**
 *   删除空格和换行
 */
- (NSString *)filtrateString;


@end
