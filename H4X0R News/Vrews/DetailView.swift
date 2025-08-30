//
//  DetailView.swift
//  H4X0R News
//
//  Created by Lidiia Diachkovskaia on 8/30/25.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
            .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    DetailView(url: "https://www.google.com")
}
