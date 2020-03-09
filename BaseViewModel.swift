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
  
  
  override init() {
    
  }
  
  @objc
  func on(){
    print("ON")
  }
  
  @objc
  func off(){
    print("OFF")
  }
  
  
  override func supportedEvents() -> [String]! {
    return ["onChange"]
  }
}
