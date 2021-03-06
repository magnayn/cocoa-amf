//
//  AMFDebugUnarchiver.h
//  CocoaAMF
//
//  Created by Marc Bauer on 01.05.09.
//  Copyright 2009 nesiumdotcom. All rights reserved.
//

#ifndef __AMFDEBUGUNARCHIVER_H__
#define __AMFDEBUGUNARCHIVER_H__


#import <Foundation/Foundation.h>
#import "AMF.h"
#import "AMFUnarchiver.h"
#import "FlexDataTypes.h"


@interface AMFDebugUnarchiver : AMFUnarchiver
{
}
@end

@interface AMF0DebugUnarchiver : AMF0Unarchiver
{
}
@end

@interface AMF3DebugUnarchiver : AMF3Unarchiver
{
}
@end

@interface AMFDebugDataNode : NSObject
{
	AMFVersion version;
	int type;
	NSObject *data;
	NSString *name;
	NSArray *children;
	NSString *objectClassName;
}
@property (nonatomic, assign) AMFVersion version;
@property (nonatomic, assign) int type;
@property (nonatomic, retain) NSObject *data;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, readonly) NSArray *children;
@property (nonatomic, retain) NSString *objectClassName;

- (NSString *)AMFClassName;
- (BOOL)hasChildren;
- (NSUInteger)numChildren;
@end


#endif