//
//  CardView.swift
//  MVVM
//
//  Created by 山田　修也 on 2020/06/18.
//  Copyright © 2020 YamadaShuya. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CardView: View {
    
    var accountDetails: Account
    
    var body: some View {

        HStack(spacing: 15) {
            
            AnimatedImage(url: URL(string: self.accountDetails.avatar_url))
            .resizable()
            .frame(width: 55, height: 55)
            .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(self.accountDetails.login)
                
                Text("\(self.accountDetails.id)")
                    .font(.caption)
            }
            
            Spacer(minLength: 0)
        }
        .padding(.horizontal)
        .padding(.top)
    }
}
