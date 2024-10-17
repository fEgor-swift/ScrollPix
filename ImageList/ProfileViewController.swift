import Foundation
import UIKit

final class ProfileViewController: UIViewController {
  
    override func viewDidLoad() {
            super.viewDidLoad()
                  
            let userName = userName()
            let userNickName = userNickName()
            let avatarImage = avatarImage()
            let profileText = profileText()
        
       
            
            NSLayoutConstraint.activate([
                avatarImage.heightAnchor.constraint(equalTo: avatarImage.widthAnchor),
                avatarImage.widthAnchor.constraint(equalToConstant: 70),
                avatarImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
                avatarImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                userName.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 8),
                userName.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
                userNickName.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8),
                userNickName.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
                profileText.topAnchor.constraint(equalTo: userNickName.bottomAnchor, constant: 8),
                profileText.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            ])
        }

        func userName() -> UILabel {
            let userName = UILabel()
            view.addSubview(userName)
            userName.translatesAutoresizingMaskIntoConstraints = false
            userName.text = "Екатерина Новикова"
            userName.font = UIFont.systemFont(ofSize: 23, weight: .bold)
            userName.textColor = .white
            return userName
        }

        func userNickName() -> UILabel {
            let nickName = UILabel()
            view.addSubview(nickName)
            nickName.translatesAutoresizingMaskIntoConstraints = false
            nickName.text = "@ekaterina_nov"
            nickName.font = UIFont.systemFont(ofSize: 13)
            nickName.textColor = UIColor(red: 174/255, green: 175/255, blue: 180/255, alpha: 1.0)
            return nickName
        }

        func profileText() -> UILabel {
            let profileText = UILabel()
            view.addSubview(profileText)
            profileText.translatesAutoresizingMaskIntoConstraints = false
            profileText.text = "Hello, world!"
            profileText.font = UIFont.systemFont(ofSize: 13)
            profileText.textColor = .white
            return profileText
        }
   
    func avatarImage() -> UIImageView {
        let avatarImage = UIImageView(image: UIImage(named: "Avatar"))
        view.addSubview(avatarImage)
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        
        return avatarImage
    }

}
    

