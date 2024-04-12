
import UIKit

final class FirstViewController: UIViewController {
    

    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nicknameLabel: UILabel!
    @IBOutlet private weak var customizeButton: UIButton!
    
    
    var data: MyData = MyData(nickname: "No name", avatar: UIImage (systemName: ""))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAvatarImage()
        updateUI()
            
        }
    
    private func setupAvatarImage() {
        avatarImage.layer.borderColor = UIColor.purple.cgColor
        avatarImage.layer.borderWidth = 1
        avatarImage.layer.cornerRadius = avatarImage.bounds.height/2
       
    }
    private func updateUI() {
        nicknameLabel.text = data.nickname 
        avatarImage.image = data.avatar
        
        
    }
    @IBAction private func customizeButtonDidTop(_ sender: Any) {
        if let secondViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            let navigationController = UINavigationController(rootViewController: secondViewController)
            secondViewController.delegate = self
            present (navigationController, animated: true, completion: nil) }
        }
        
    
}
extension FirstViewController: AvatarDelegate {
    func didSelectAvatarAndName(data: MyData) {
        nicknameLabel.text = data.nickname
        avatarImage.image = data.avatar
        
    }
}
protocol AvatarDelegate: AnyObject {
    
    func didSelectAvatarAndName (data: MyData )
}
