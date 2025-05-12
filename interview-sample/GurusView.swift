//
//  GurusView.swift
//  interview-sample
//
//  Created by David Pei on 5/9/25.
//

import SwiftUI

/// Model representing a "guru" returned by the mock endpoint.
struct User: Identifiable {
    let id: Int

    let guruName: String
    // TODO: [Step 2] add phone number and website properties to the User model
}

extension GurusView {
    class ViewModel: ObservableObject {
        var users: [User] = [.init(id: 1, guruName: "Loading...")]

        /// Fetch gurus from https://jsonplaceholder.typicode.com/users
        /// Sample response can be found in the file `users_response.json`.
        func fetchUsers() {
            // TODO: [Step 2] implement networking.
            // To keep the interview moving, don’t worry about exhaustive error handling
        }
    }
}

struct GurusView: View {
    private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.users) { _ in
                VStack(alignment: .leading, spacing: 4) {
                    // TODO: [Step 2] Connect the user data to the UI
                    Text("Loading...")
                        .font(.headline)
                    Text("Phone: Loading...")
                        .font(.subheadline)

                    // STRETCH: Make the website tappable and open in Safari
                    Text("Website: Loading...")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Gurus")
        }
    }
}

#Preview {
    GurusView()
}
