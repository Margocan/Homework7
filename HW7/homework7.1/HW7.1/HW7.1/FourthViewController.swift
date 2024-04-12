

import UIKit

final class FourthViewController: UIViewController {
    
    @IBOutlet  weak var firstButton: UIButton!
    @IBOutlet  weak var secondButton: UIButton!
    @IBOutlet   weak var thirdButton: UIButton!
    @IBOutlet  weak var fourthButton: UIButton!
    
    
    weak var delegate: AvatarDelegate?
    var selectedName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func setupButtonAppearance (_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
    }
    
    func setupButtons() {
        setupButtonAppearance(firstButton)
        setupButtonAppearance(secondButton)
        setupButtonAppearance(thirdButton)
        setupButtonAppearance(fourthButton)
    }
    
   
    @IBAction func anyButtonDidTap(_ button: UIButton)  {
        selectedName = button.titleLabel?.text
        if let fifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as? FifthViewController {
            fifthViewController.delegate = delegate
            fifthViewController.data.nickname = selectedName
            self.navigationController?.pushViewController(fifthViewController, animated: true)
            
        }
    }
    

        }
        

    




