
import UIKit


class RollCollectionViewCell: UICollectionViewCell {
    //MARK: - Properties
    static let reuseId = "RollCollectionViewCell"
    
    let imageView : UIImageView = {
        let image = UIImageView(image: UIImage(named: "sushi1"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let likeButton : UIButton = {
        let button = UIButton(type: .system)
        let image = UIImageView(image: UIImage(named: "like"))
        button.setImage(image.image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nameRoll : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rollDescription : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 11, weight: .light)
        label.text = "0"
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rollcost : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(imageView)
        addSubview(nameRoll)
        addSubview(rollDescription)
        addSubview(rollcost)
        addSubview(likeButton)
        setupConstraints()
    }
    //MARK: - Methods
    func setupConstraints() {
        //image constraints
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 40)
        imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2).isActive = true
        //name contraints
        nameRoll.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameRoll.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameRoll.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 12).isActive = true
        //discription constraints
        rollDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        rollDescription.topAnchor.constraint(equalTo: nameRoll.bottomAnchor, constant: 8).isActive = true
        rollDescription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        //like constaints
        likeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        likeButton.topAnchor.constraint(equalTo: rollDescription.bottomAnchor, constant: 30).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        //cost constraints
        rollcost.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        rollcost.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = 5
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        self.clipsToBounds = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
