import UIKit

class PerformanceTableViewController: UITableViewController {

  private static var rowsCount = 20
  private var storage = [Double](repeating: 0, count: rowsCount)

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.rowHeight = 150
  }
  
  // MARK: - UITableViewDataSource
  
  override func tableView(_ tableView: UITableView,
    cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    if let cell = tableView.dequeueReusableCell(withIdentifier: "performanceTableViewCell") as? PerformanceTableViewCell  {
      let rating = storage[indexPath.row]
      cell.update(rating, rowNumber: indexPath.row)
      cell.cosmosView.didTouchCosmos = { [weak self] rating in
        self?.storage[indexPath.row] = rating
      }
      return cell
    }
      
    return UITableViewCell()
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return PerformanceTableViewController.rowsCount
  }
}
