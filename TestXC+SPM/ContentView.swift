//
//  ContentView.swift
//  TestXC+SPM
//
//  Created by Tao X on 4/24/21.
//

import SwiftUI
import WalletCore
import SwiftProtobuf

struct ContentView: View {

    let wallet = HDWallet(strength: 256, passphrase: "")!
    let input = EthereumSigningInput.with {
        $0.chainID = Data([0x01])
    }
    var body: some View {
        VStack {
            Text("Ethereum address: \(wallet.getAddressForCoin(coin: .ethereum))").padding()
            Text("Protobuf: \(try! input.serializedData().hexString)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
