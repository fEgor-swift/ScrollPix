import Foundation
import UIKit

final class ImagesListCell: UITableViewCell {
   static let reuseIdentifier = "ImageListCell"
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
}
