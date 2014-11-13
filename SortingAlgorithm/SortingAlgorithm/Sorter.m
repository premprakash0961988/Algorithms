//
//  Sorter.m
//  SortingAlgorithm
//
//  Created by Prem Chaurasiya on 11/11/14.
//  Copyright (c) 2014 playLikeKid. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter

#pragma Insertion Sort

+(NSArray*)sortUsingInsertionSortWithInput:(NSArray*)inputArray_ {
    // O(n2 Complexity)
    NSInteger x = 0;
    NSInteger j = 0;
    NSMutableArray *inputArray = [NSMutableArray arrayWithArray:inputArray_];
    for (NSInteger  index = 1 ; index < inputArray.count ; index ++ ) {
        x = [inputArray[index] integerValue];
        j = index;

        while (j > 0 && [inputArray[j-1] integerValue] > x) {
            [inputArray exchangeObjectAtIndex:(j-1) withObjectAtIndex:j];
            j = j - 1;
        };
    }
    return [inputArray copy];
}

#pragma Selection Sort

+(NSArray*)sortUsingSelectionSortWithInput:(NSArray*)inputArray_
{
    NSMutableArray *inputArray = [NSMutableArray arrayWithArray:inputArray_];
    NSInteger count = [inputArray count];
    NSInteger minObjectIndex = 0;
    
    for (int index = 0; index < count; index ++) {
        minObjectIndex = index;
        
        for (int j = index + 1; j < count ; j++) {
            if(inputArray[j] < inputArray[minObjectIndex])
                minObjectIndex = j;
        }
        
        if(minObjectIndex != index) {
            [inputArray exchangeObjectAtIndex:minObjectIndex withObjectAtIndex:index];
        }
    }
    
    return [inputArray copy];
}





#pragma Merge Sort
+(NSArray*)sortUsingMergeSortWithInput:(NSArray*)inputArray {
    
    if(inputArray.count < 2) {
        return inputArray;
    }
    
    NSInteger midIndex = inputArray.count/2;
    NSRange firstHalfRange = NSMakeRange(0, midIndex);
    NSRange secondHalfRange = NSMakeRange(midIndex, inputArray.count - midIndex);
    NSArray *sortedFirstHalf = [self sortUsingMergeSortWithInput:[inputArray subarrayWithRange:firstHalfRange]];
    NSArray *sotedSecondHalf = [self sortUsingMergeSortWithInput:[inputArray subarrayWithRange:secondHalfRange]];
    NSArray *resultArray = [self mergeArray:sortedFirstHalf andSecondArray:sotedSecondHalf];
    return resultArray;
}

+(NSArray*)mergeArray:(NSArray*)firstArray andSecondArray:(NSArray*)secondArray {
    if(firstArray && !secondArray)
        return secondArray;
    else if(!firstArray && secondArray) {
        return firstArray;
    }
    else if(!firstArray && !secondArray)
        return nil;
        
    int firstArrayCounter = 0;
    int  secondArrayCounter = 0;
    NSMutableArray *finalArray = [NSMutableArray arrayWithCapacity:firstArray.count+secondArray.count];
    do {
        if(firstArray[firstArrayCounter] <  secondArray[secondArrayCounter]) {
            [finalArray addObject:firstArray[firstArrayCounter]];
             firstArrayCounter++;
        }
        else {
            [finalArray addObject:secondArray[secondArrayCounter]];
            secondArrayCounter++;
        }
    } while ( firstArray.count > firstArrayCounter  &&  secondArray.count > secondArrayCounter);
    
    if(firstArrayCounter == firstArray.count) {
        [finalArray addObjectsFromArray:[secondArray subarrayWithRange:NSMakeRange(secondArrayCounter, secondArray.count - secondArrayCounter)]];
    }
    else {
        [finalArray addObjectsFromArray:[firstArray subarrayWithRange:NSMakeRange(firstArrayCounter, firstArray.count - firstArrayCounter)]];
    }
    
    return [finalArray copy];
}


#pragma Bubble Sort

+(NSArray*)sortUsingBubbleSortWithInput:(NSArray*)inputArray {
    
    NSMutableArray *sortedArray = [inputArray mutableCopy];
    for (int i = 0; i < sortedArray.count; i++) {
        for (int j = 0; j < sortedArray.count - i; j++) {
            if(sortedArray[MIN(sortedArray.count - 1, j+1)] < sortedArray[j] ) {
                [sortedArray exchangeObjectAtIndex:j+1 withObjectAtIndex:j];
            }
        }
    }
    
    return sortedArray;
}

@end
