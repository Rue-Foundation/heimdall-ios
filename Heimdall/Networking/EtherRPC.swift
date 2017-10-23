//
//  EtherRPC.swift
//  Heimdall
//
//  Created by Luis Reisewitz on 05.09.17.
//  Copyright © 2017 Gnosis. All rights reserved.
//

import Foundation
import ethers

fileprivate let provider = InfuraProvider(chainId: ChainId.ChainIdKovan, url: URL(string: "")!)

func fetchBlockNumber(completion: @escaping (Int)->()) {
    provider?.getBlockNumber().onCompletion { promise in
        completion(promise!.value)
    }
}

