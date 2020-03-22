//
//  BaseViewModel.swift
//  TrackPlayerSwiftReact
//
//  Created by saeed on 3/9/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(BaseViewModel)
class BaseViewModel:RCTEventEmitter{
  
  private var count = 0
  
  override init() {
    
  }
  
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc
  override func constantsToExport() -> [AnyHashable : Any]! {
    print("fuck react native")
    return ["initialCount": 0]
  }
  
  
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  @objc
  func increment() {
     count += 1
     print("count is \(count)")
     sendEvent(withName: "onIncrement", body: ["count": count])
   }
  
 @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([
      count,               // variable
      123.9,               // int or float
      "third argument",    // string
      [1, 2.2, "3"],       // array
      ["a": 1, "b": 2]     // object
    ])
  }
  
  @objc
   func decrement(
     _ resolve: RCTPromiseResolveBlock,
     rejecter reject: RCTPromiseRejectBlock
   ) -> Void {
     if (count == 0) {
       let error = NSError(domain: "", code: 200, userInfo: nil)
       reject("E_COUNT", "count cannot be negative", error)
     } else {
       count -= 1
       resolve("count was decremented")
     }
   }
  
  
}
