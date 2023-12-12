//
//  RevWssMain.swift
//  RevScreamTest
//
//  Created by Chandan Bhagabati on 12/12/23.
//

import Foundation
import Starscream


public class RevWssMain: WebSocketDelegate{
    public func didReceive(event: Starscream.WebSocketEvent, client: Starscream.WebSocketClient) {
        switch event{
            
        case .connected(_):
            print("connected")
        case .disconnected(_, _):
            print("disconnected")
        case .text(let string):
            print("Received text: \(string)")
        case .binary(let data):
            print("Received data: \(data.count)")
        case .pong(_):
            break
        case .ping(_):
            break
        case .error(let error):
            print(error?.localizedDescription)
        case .viabilityChanged(_):
            break
        case .reconnectSuggested(_):
            break
        case .cancelled:
            print("Cancelled")
        case .peerClosed:
            print("peer closede")
        }
    }
    
    public init() {
        
    }
    
    public func TestResponse(){
        print("I am alive")
    }
    
}
