//
//  RideHistoryRow.swift
//  MoveInSync
//
//  Created by Shaurya Verma on 07/04/26.
//

import SwiftUI

struct RideHistoryRow: View {
    var ride: RideModel

    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(ride.status == "Completed" ? Color(hex: "27AE60") : Color(hex: "E74C3C"))
                .frame(width: 10, height: 10)

            VStack(alignment: .leading, spacing: 2) {
                Text("\(ride.from) → \(ride.to)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                Text(ride.date)
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Spacer()

            Text(ride.status)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(ride.status == "Completed" ? Color(hex: "27AE60") : Color(hex: "E74C3C"))
        }
        .padding(.vertical, 6)
    }
}
