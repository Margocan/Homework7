

import UIKit

final class ThirdViewController: UIViewController {
    
    @IBOutlet private weak var maleButton: UIButton!
    @IBOutlet private weak var femaleButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    
    let nicknames = ["Frog", "Hammer", "King", "Gun", "Fox", "Mirror","Queen","Candy"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func maleButtonDidTap(_ sender: Any) {
        if let fourthViewController =
        self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as?
        FourthViewController {
            fourthViewController.delegate = delegate
            fourthViewController.loadView()
            fourthViewController.setupButtons()
            fourthViewController.firstButton.setTitle(nicknames[0], for: .normal)
            fourthViewController.secondButton.setTitle(nicknames[1], for: .normal)
            fourthViewController.thirdButton.setTitle(nicknames[2], for: .normal)
            fourthViewController.fourthButton.setTitle(nicknames[3], for: .normal)
            self.navigationController?.pushViewController(fourthViewController, animated: true)}
        
    }
    
    @IBAction func femaleButtonDidTap(_ sender: Any) {
        if let fourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController {
            fourthViewController.delegate = delegate
            fourthViewController.loadView()
            fourthViewController.setupButtons()
            fourthViewController.firstButton.setTitle(nicknames[4], for: .normal)
            fourthViewController.secondButton.setTitle(nicknames[5], for: .normal)
            fourthViewController.thirdButton.setTitle(nicknames[6], for: .normal)
            fourthViewController.fourthButton.setTitle(nicknames[7], for: .normal)
            self.navigationController?.pushViewController(fourthViewController, animated: true)
        }
    }
}
