//
//  CircleGroupView.swift
//  Restart
//
//  Created by Jash Dhinoja on 11/03/2023.
//

import SwiftUI

struct CircleGroupView: View {
//    MARK: Properties
    @State var shapeColor: Color
    @State var shapeOpacity: Double
//    MARK: Body
    var body: some View {
        ZStack{
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260,height: 260,alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260,height: 260,alignment: .center)
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
