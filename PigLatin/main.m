//
//  main.m
//  PigLatin
//
//  Created by Alex on 2015-06-12.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinCategory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"hey there. What would you like to convert to pig latin? ");
        while (TRUE) {
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *myString = [[NSString alloc] init];
            NSString *pigLatinString = [[NSString alloc] init];
            pigLatinString = @"";
            for (int i = 0; i < [commandWords count]; i++) {
                
                myString = commandWords[i];
                myString = [myString stringByPigLatinization];
                pigLatinString = [[pigLatinString stringByAppendingString:myString] stringByAppendingString:@" "];
           
            }
             NSLog(@"%@", pigLatinString);
        }
    }
    return 0;
}
