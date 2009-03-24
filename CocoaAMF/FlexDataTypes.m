//
//  AMFFlexDataTypes.m
//  CocoaAMF
//
//  Created by Marc Bauer on 23.03.09.
//  Copyright 2009 nesiumdotcom. All rights reserved.
//

#import "FlexDataTypes.h"


@implementation FlexArrayCollection

@synthesize source;

- (id)initWithSource:(NSObject *)obj
{
	if (self = [super init])
	{
		self.source = obj;
	}
	return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
	if (self = [super init])
	{
		self.source = [coder decodeObject];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
	[coder encodeObject:source];
}

- (BOOL)isEqual:(id)obj
{
	return [obj isMemberOfClass:[self class]] && 
		[source isEqual:[obj source]];
}

- (void)dealloc
{
	[source release];
	[super dealloc];
}
@end



@implementation FlexObjectProxy

@synthesize object;

- (id)initWithObject:(NSObject *)obj
{
	if (self = [super init])
	{
		self.object = obj;
	}
	return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
	if (self = [super init])
	{
		self.object = [coder decodeObject];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
	[coder encodeObject:object];
}

- (BOOL)isEqual:(id)obj
{
	return [obj isMemberOfClass:[self class]] && 
		[object isEqual:[obj object]];
}

- (void)dealloc
{
	[object release];
	[super dealloc];
}
@end