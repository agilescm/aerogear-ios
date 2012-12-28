/*
 * JBoss, Home of Professional Open Source.
 * Copyright 2012 Red Hat, Inc., and individual contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "AGPipeConfiguration.h"

@implementation AGPipeConfiguration

@synthesize baseURL = _baseURL;
@synthesize endpoint = _endpoint;
@synthesize recordId = _recordId;
@synthesize authModule = _authModule;
@synthesize name = _name;
@synthesize type = _type;

- (id)init {
    self = [super init];
    if (self) {
        // default values:
        _type = @"REST";
        _recordId = @"id";
    }
    return self;
}

// custom getter to return name if no endpoint is specified.
-(NSString*) endpoint {
    return (_endpoint == nil? _name: _endpoint);
}

@end
