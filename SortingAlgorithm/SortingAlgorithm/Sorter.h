//
//  Sorter.h
//  SortingAlgorithm
//
//  Created by Prem Chaurasiya on 11/11/14.
//  Copyright (c) 2014 playLikeKid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sorter : NSObject

+(NSArray*)sortUsingInsertionSortWithInput:(NSArray*)inputArray;
+(NSArray*)sortUsingSelectionSortWithInput:(NSArray*)inputArray;
+(NSArray*)sortUsingMergeSortWithInput:(NSArray*)inputArray;
@end
