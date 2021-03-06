/*
 * Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "EC2ModifySnapshotAttributeRequest.h"


@implementation EC2ModifySnapshotAttributeRequest

@synthesize snapshotId;
@synthesize attribute;
@synthesize operationType;
@synthesize userIds;
@synthesize groupNames;


-(id)init
{
    if (self = [super init]) {
        snapshotId    = nil;
        attribute     = nil;
        operationType = nil;
        userIds       = [[NSMutableArray alloc] initWithCapacity:1];
        groupNames    = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}

-(id)initWithSnapshotId:(NSString *)theSnapshotId andAttribute:(NSString *)theAttribute andOperationType:(NSString *)theOperationType
{
    if (self = [self init]) {
        self.snapshotId    = theSnapshotId;
        self.attribute     = theAttribute;
        self.operationType = theOperationType;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"SnapshotId: %@,", snapshotId] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"Attribute: %@,", attribute] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"OperationType: %@,", operationType] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"UserIds: %@,", userIds] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"GroupNames: %@,", groupNames] autorelease]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return [buffer autorelease];
}



-(void)dealloc
{
    [snapshotId release];
    [attribute release];
    [operationType release];
    [userIds release];
    [groupNames release];

    [super dealloc];
}


@end
