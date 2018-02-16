import UIKit

public class PerformanceTableViewCell: UITableViewCell {
  @IBOutlet var cosmosView: CosmosView!
  @IBOutlet weak var rowNumber: UILabel!
  
  func update(_ rating: Double, rowNumber: Int) {
    cosmosView.rating = rating
    self.rowNumber.text = String(rowNumber)
  }
}
