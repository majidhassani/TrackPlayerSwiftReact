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

    RCT_EXTERN_METHOD(setupPlayer:(NSDictionary *)data
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(destroy);

    RCT_EXTERN_METHOD(updateOptions:(NSDictionary *)options
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(add:(NSArray *)objects
                      before:(NSString *)trackId
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(remove:(NSArray *)objects
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(removeUpcomingTracks:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(skip:(NSString *)trackId
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(skipToNext:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(skipToPrevious:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(reset:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(play:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(pause:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(stop:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(seekTo:(double)time
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(setVolume:(float)volume
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getVolume:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(setRate:(float)rate
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getRate:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getTrack:(NSString *)trackId
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getQueue:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getCurrentTrack:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getDuration:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getBufferedPosition:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getPosition:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(getState:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

    RCT_EXTERN_METHOD(updateMetadataForTrack:(NSString *)trackId
                      properties:(NSDictionary *)properties
                      resolver:(RCTPromiseResolveBlock)resolve
                      rejecter:(RCTPromiseRejectBlock)reject);

@end

