

import UIKit

struct MyData {
    var nickname: String?
    var avatar: UIImage? = nil
    
}


class SecondViewController: UIViewController {
    
    
    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nicknameLabel: UILabel!
    @IBOutlet private weak var saveButton: UIButton!
    @IBOutlet private weak var editButton: UIButton!
    @IBOutlet private weak var cancelButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    
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
        avatarImage.image = data.avatar}
    
    private func save(data: MyData) {
        delegate?.didSelectAvatarAndName (data: data)
    }
    
    @IBAction private func editButtonDidTap(_ sender: Any) {
        
        if let thirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController { 
            thirdViewController.delegate = self.delegate
            self.navigationController?.pushViewController(thirdViewController, animated: true)
            }
        
    }
    
    @IBAction private func saveButtonDidTap(_ sender: Any) {
        save(data: data)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func cancelButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
    
        
       
        }

    

  


