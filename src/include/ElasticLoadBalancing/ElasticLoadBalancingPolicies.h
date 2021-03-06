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

#import "ElasticLoadBalancingAppCookieStickinessPolicy.h"
#import "ElasticLoadBalancingLBCookieStickinessPolicy.h"



/**
 * Policies
 *
 * \ingroup ElasticLoadBalancing
 */

@interface ElasticLoadBalancingPolicies:NSObject

{
    NSMutableArray *appCookieStickinessPolicies;
    NSMutableArray *lBCookieStickinessPolicies;
}


/**
 * A list of the <a>AppCookieStickinessPolicy</a> objects created with
 * <a>CreateAppCookieStickinessPolicy</a>.
 */
@property (nonatomic, retain) NSMutableArray *appCookieStickinessPolicies;

/**
 * A list of the <a>LBCookieStickinessPolicy</a> objects created with
 * <a>CreateAppCookieStickinessPolicy</a>.
 */
@property (nonatomic, retain) NSMutableArray *lBCookieStickinessPolicies;


/**
 * Default constructor for a new Policies object.  Callers should use the
 * property methods to initialize this object after creating it.
 */
-(id)init;

/**
 * Adds a single object to appCookieStickinessPolicies.
 * This function will alloc and init appCookieStickinessPolicies if not already done.
 */
-(void)addAppCookieStickinessPolicy:(ElasticLoadBalancingAppCookieStickinessPolicy *)appCookieStickinessPolicy;

/**
 * Adds a single object to lBCookieStickinessPolicies.
 * This function will alloc and init lBCookieStickinessPolicies if not already done.
 */
-(void)addLBCookieStickinessPolicy:(ElasticLoadBalancingLBCookieStickinessPolicy *)lBCookieStickinessPolicy;

/**
 * Returns a string representation of this object; useful for testing and
 * debugging.
 *
 * @return A string representation of this object.
 */
-(NSString *)description;


@end
