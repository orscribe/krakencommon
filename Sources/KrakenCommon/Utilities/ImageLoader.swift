//
//  Created by wesley Mitchell on 4/13/21.
//

import Foundation
import Combine

public class ImageLoader: ObservableObject {
    public var didChange = PassthroughSubject<Data, Never>()
    public var data = Data() {
        didSet {
            didChange.send(data)
        }
    }

    public init(urlString:String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }
        task.resume()
    }
}
