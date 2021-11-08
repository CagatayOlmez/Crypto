//
//  CryptoViewModel.swift
//  Crypto
//
//  Created by Çağatay Ölmez on 3.11.2021.
//

import Foundation

struct CryptoListViewModel{
    let cryptoCurrencyList : [CryptoCurrency]
    
}

extension CryptoListViewModel{
    
    func numberOfRowsInSection() -> Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index : Int) -> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}


struct CryptoViewModel{
    let cryptoCurrency : CryptoCurrency
    
    var name : String{
        return self.cryptoCurrency.currency
    }
    var price : String{
        return self.cryptoCurrency.price
    }
    
    
}
