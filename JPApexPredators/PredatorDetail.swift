//
//  PredatorDetail.swift
//  JPApexPredators
//
//  Created by yaxin on 2025-02-21.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ZStack(alignment: .bottomTrailing) {
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / 1.5,
                               height: geo.size.height / 3.7)
                        .scaleEffect(x: -1)
                        .shadow(color: .black, radius: 7)
                        .offset(y: 20)
                }
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    PredatorDetail(predator: Predators().allApexPredators[2])
}
