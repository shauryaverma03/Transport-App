//
//  HomeView.swift
//  MoveInSync
//
//  Created by Shaurya Verma on 06/04/26.
//

import SwiftUI

struct HomeView: View {
    @State private var navigateToBooking = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "F5F6FA")
                    .ignoresSafeArea()

                VStack(spacing: 0) {

                    // Header
                    ZStack {
                        Color(hex: "1A3C6E")
                            .ignoresSafeArea(edges: .top)

                        VStack(alignment: .leading, spacing: 4) {
                            Text("Good Morning 👋")
                                .font(.subheadline)
                                .foregroundColor(.white.opacity(0.8))
                            Text("Shaurya Verma")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 20)
                    }
                    .frame(height: 100)

                    ScrollView {
                        VStack(spacing: 20) {

                            // Today's Ride Card
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Today's Ride")
                                    .font(.headline)
                                    .foregroundColor(Color(hex: "1A3C6E"))

                                HStack {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("No ride booked yet")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        Text("Book your cab for today")
                                            .font(.caption)
                                            .foregroundColor(.gray.opacity(0.7))
                                    }
                                    Spacer()
                                    Image(systemName: "car.fill")
                                        .font(.system(size: 36))
                                        .foregroundColor(Color(hex: "1A3C6E").opacity(0.3))
                                }
                            }
                            .padding(20)
                            .background(Color.white)
                            .cornerRadius(16)
                            .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)

                            // Quick Actions
                            Text("Quick Actions")
                                .font(.headline)
                                .foregroundColor(Color(hex: "1A3C6E"))
                                .frame(maxWidth: .infinity, alignment: .leading)

                            HStack(spacing: 16) {
                                NavigationLink(destination: BookRideView()) {
                                    QuickActionCard(icon: "plus.circle.fill", title: "Book Ride", color: "1A3C6E")
                                }

                                NavigationLink(destination: TrackingView()) {
                                    QuickActionCard(icon: "map.fill", title: "Track Cab", color: "27AE60")
                                }
                            }

                            HStack(spacing: 16) {
                                QuickActionCard(icon: "clock.fill", title: "History", color: "E67E22")
                                QuickActionCard(icon: "person.fill", title: "Profile", color: "8E44AD")
                            }

                            // Recent Activity
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Recent Activity")
                                    .font(.headline)
                                    .foregroundColor(Color(hex: "1A3C6E"))

                                ForEach(recentRides, id: \.id) { ride in
                                    RideHistoryRow(ride: ride)
                                }
                            }
                            .padding(20)
                            .background(Color.white)
                            .cornerRadius(16)
                            .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
                        }
                        .padding(20)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }

    var recentRides: [RideModel] = [
        RideModel(id: 1, from: "Home", to: "Office", date: "Today, 9:00 AM", status: "Completed"),
        RideModel(id: 2, from: "Office", to: "Home", date: "Yesterday, 6:30 PM", status: "Completed"),
        RideModel(id: 3, from: "Home", to: "Office", date: "Mon, 9:00 AM", status: "Cancelled")
    ]
}

struct QuickActionCard: View {
    var icon: String
    var title: String
    var color: String

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 28))
                .foregroundColor(Color(hex: color))
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(Color(hex: "1A3C6E"))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}
