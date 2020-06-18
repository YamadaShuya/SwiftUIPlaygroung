//
//  HomeView.swift
//  MVVM
//
//  Created by 山田　修也 on 2020/06/18.
//  Copyright © 2020 YamadaShuya. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var users = FetchAccounts()
    
    var body: some View {
        
        ZStack {
            
            if self.users.accounts.isEmpty {
                
                Indicator()
            }
            else {
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        
                        ForEach(self.users.accounts) { user in
                            
                            CardView(accountDetails: user)
                        }
                    }
                }
            }
        }

        .onAppear() {
            
            self.users.fetchUsers()
        }
        .navigationBarTitle("Home")
    }
}
