

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countriesVC: UITableView!
    var  Countries = ["Egypt","KSA","USA","Germany","France","MOROCCO"]
    var  countriesFlags = [UIImage(named: "EGY"),UIImage(named: "KSA"),UIImage(named: "USA"),UIImage(named: "Germany"),UIImage(named: "France"),UIImage(named: "MOROCCO")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countriesVC.dataSource = self
        countriesVC.delegate = self 
        countriesVC.tableFooterView = UIView()
        
    }
}
extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as?TableViewClass  {
            cel.lblContryName.text = Countries[indexPath.row]
            cel.flagImageViwe.image = countriesFlags[indexPath.row]
           
            return cel
        }
    
        return TableViewClass()
    }
    }
extension ViewController :UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let passDataVC = storyboard?.instantiateViewController(withIdentifier: "PassDataViewController")as?PassDataViewController{
            passDataVC.passImage = countriesFlags[indexPath.row]
            passDataVC.passText = Countries[indexPath.row]
            //navigationController?.pushViewController(passDataVC, animated: true)
            present(passDataVC, animated: true)
        }
        
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        Countries.remove(at: indexPath.row)
        countriesFlags.remove(at: indexPath.row)
        countriesVC.reloadData()
    }
}
    
    


