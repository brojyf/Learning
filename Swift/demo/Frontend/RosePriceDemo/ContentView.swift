import SwiftUI

struct PriceResponse: Decodable {
    let date: String
    let price: Double
}

struct ContentView: View {
    @State private var selectedDate = Date()
    @State private var priceText = "Please select a date first."

    var body: some View {
        VStack(spacing: 20) {
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .environment(\.locale, .init(identifier: "us_English"))

            Button("Query the roseprice") {
                queryPrice()
            }
            .buttonStyle(.borderedProminent)

            Text(priceText)
                .font(.title3)
                .padding()
        }
        .padding()
    }

    private func queryPrice() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dateStr = formatter.string(from: selectedDate)

        guard let url = URL(string: "http://localhost:8080/price?date=\(dateStr)") else {
            priceText = "invalid URL"
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, resp, error in
            DispatchQueue.main.async {
                if let error = error {
                    priceText = "Requst failed：\(error.localizedDescription)"
                    return
                }
                guard let data = data else {
                    priceText = "No data returned"
                    return
                }
                if let result = try? JSONDecoder().decode(PriceResponse.self, from: data) {
                    priceText = "\(result.date)  Rose Price:$\(String(format: "%.2f", result.price))"
                } else {
                    priceText = "Cannot find price that day"
                }
            }
        }
        task.resume()
    }
}

#Preview {
    ContentView()
}
