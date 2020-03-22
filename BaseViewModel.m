//
//  BaseViewModel.m
//  TrackPlayerSwiftReact
//
//  Created by saeed on 3/9/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(BaseViewModel, RCTEventEmitter)

    RCT_EXTERN_METHOD(increment)

    RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)

    RCT_EXTERN_METHOD(
                      decrement: (RCTPromiseResolveBlock)resolve
                      rejecter: (RCTPromiseRejectBlock)reject
                      )

@end

