

import UIKit

class FifthViewController: UIViewController {
    
    
    @IBOutlet  weak var manButton: UIButton!
    @IBOutlet  weak var smileButton: UIButton!
    @IBOutlet  weak var pawButton: UIButton!
    @IBOutlet  weak var crownButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    var data: MyData = MyData(nickname:"No name", avatar: UIImage (systemName: ""))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    @IBAction func anyButtonDidTap(_ sender: UIButton) {
        switch sender {
        case crownButton:
            if let image = UIImage( named: "royalcrown") {
                data.avatar = image }
        case smileButton:
            if let image = UIImage(named: "smile") {
                data.avatar = image }
        case pawButton:
            if let image = UIImage(named: "paw") {
                data.avatar = image }
        case manButton:
            if let image = UIImage(named: "person"){
                data.avatar = image }
        default: break
        }
        if let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            secondViewController.delegate = delegate
            secondViewController.data = data
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
            }
    }
    
    

    



