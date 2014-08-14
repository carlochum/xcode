//
//  main.m
//  palindromef
//
//  Created by Carlo Chumroonridhi on 14/08/2014.
//  Copyright (c) 2014 id11000989. All rights reserved.
//

#import <Foundation/Foundation.h>

int getNumber();
int isPalindrome(int number);

int main()
{
    @autoreleasepool
    {
        int number = getNumber();
        
        if (number >= 0)
        {
            if (isPalindrome(number))
                NSLog(@"\n%d is palindromic\n", number);
            else
                NSLog(@"\n%d is not palindromic\n", number);
        }
        else
            NSLog(@"Invalid number entered");
    }
    return 0;
}

int getNumber()
{
    int number;
    NSLog(@"Enter a number please.");
    if (scanf("%d", &number))
        return number;
    else
        return -1;
}

int isPalindrome(int number)
{
    int reverse = 0;
    int temp = number;
    while (temp > 0)
    {
        reverse *= 10;
        reverse += (temp % 10);
        temp /= 10;
    }
    if (number == reverse)
        return true;
    else
        return false;
}