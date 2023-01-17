
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    
    let myData = [ "First", "Second", "Third", "Four", "Five", "Six"]
    
    
    var myData2: [SecondViewController] = [
        SecondViewController(image: UIImage(named: "1")! ,label: "Coffee", title: "Coffee time!", price: 250),
        SecondViewController(image: UIImage(named: "2")!,label: "Macarons", title: "Take a bite!", price: 750),
        SecondViewController(image:  UIImage(named: "3")!,label: "Strawberry Chocolate", title: "Sweety life", price: 480),
        SecondViewController(image:  UIImage(named: "4")!,label: "Burger", title: "Delicios!", price: 560),
        SecondViewController(image:  UIImage(named: "5")!,label: "Steak", title: "For real men!", price: 1500),
        SecondViewController(image:  UIImage(named: "6")!,label: "Pizza", title: "Snack time!", price: 770)
        
    ]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
        
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableVC",
                                                 for: indexPath)as! TableViewCell
       
        
      cell.textLabel?.text = myData[indexPath.row]
        
        
        return cell
   }


}

