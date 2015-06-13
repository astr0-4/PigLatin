//
//  NSString+PigLatinCategory.m
//  PigLatin
//
//  Created by Alex on 2015-06-12.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "NSString+PigLatinCategory.h"

@implementation NSString (PigLatinCategory)

-(NSString *)stringByPigLatinization
{
    NSRange range = NSMakeRange(0, [self length]);
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSRange vowelLocation = [self rangeOfCharacterFromSet:vowels options:0 range:range];
 
    
    if (vowelLocation.location == NSNotFound) {
        return [self stringByAppendingString:@"ay"];
    }
    
    if (vowelLocation.location > 0){
        NSString *firstString = [[NSString alloc] init];
        firstString = [self substringWithRange:NSMakeRange(0, vowelLocation.location)];
        NSString *secondString = [[NSString alloc] init];
        secondString = [self substringWithRange:NSMakeRange(vowelLocation.location, self.length-vowelLocation.location)];
        NSString *newString = [[NSString alloc] init];
        newString = [newString stringByAppendingString:secondString];
        newString = [newString stringByAppendingString:firstString];
        newString = [newString stringByAppendingString:@"ay"];
        return newString;
      
    }
 
    else {
        return [self stringByAppendingString:@"yay"];
    }
}


@end
