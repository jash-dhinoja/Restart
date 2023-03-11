//
//  HomeView.swift
//  Restart
//
//  Created by Jash Dhinoja on 10/03/2023.
//

import SwiftUI

struct HomeView: View {
    //MARK: Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    //MARK: Body
    var body: some View {
        VStack (spacing: 20){
            Text("Home")
                .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = true
            }){
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
