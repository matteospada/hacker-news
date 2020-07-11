//
//  DetailView.swift
//  hacker news
//
//  Created by Matteo Spada on 11/07/2020.
//  Copyright © 2020 Matteo Spada. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}
