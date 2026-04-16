//
//  CallkitIncomingAppDelegate.swift
//  flutter_callkit_incoming
//
//  Created by Hien Nguyen on 05/01/2024.
//

import Foundation
import AVFAudio
import CallKit


public protocol CallkitIncomingAppDelegate : NSObjectProtocol {
    
    func onAccept(_ call: Call, _ action: CXAnswerCallAction);
    
    func onDecline(_ call: Call, _ action: CXEndCallAction);
    
    func onEnd(_ call: Call, _ action: CXEndCallAction, isAppInitiated: Bool);
    
    func onTimeOut(_ call: Call);

    func didActivateAudioSession(_ audioSession: AVAudioSession)
    
    func didDeactivateAudioSession(_ audioSession: AVAudioSession)
    
    /// CallKit UIの表示名を更新するためにコールのUUIDが変更された際に呼ばれる
    /// popopo_client側でcallStateのUUIDマッピングを更新するために使用
    func onCallUUIDChanged(_ oldUUID: String, _ newUUID: String)
    
}
