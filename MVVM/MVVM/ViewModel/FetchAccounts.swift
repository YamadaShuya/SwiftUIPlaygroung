//
//  FetchAccounts.swift
//  MVVM
//
//  Created by 山田　修也 on 2020/06/18.
//  Copyright © 2020 YamadaShuya. All rights reserved.
//

import Foundation
import SwiftUI

class FetchAccounts: ObservableObject {
    
    @Published var accounts: [Account] = []
    
    let url = "https://api.github.com/users/hadley/orgs"
    
    func fetchUsers() {
        
        let urlSession = URLSession(configuration: .default)
        urlSession.dataTask(with: URL(string: url)!) { (data, _, _) in
            
            guard let users = data else {return}
            
            do {
                
                let decoder = try JSONDecoder().decode([Account].self, from: users)
                print(decoder)
                
                DispatchQueue.main.async {
                    self.accounts = decoder
                }
            }
            catch {
                print(error.localizedDescription)
            }
            
        }
        .resume()
    }
}
