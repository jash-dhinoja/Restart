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
//            Header
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
//            Center
            Text(" Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
//            Footer
            Spacer()
            Button(action: {
                isOnboardingViewActive = true
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
