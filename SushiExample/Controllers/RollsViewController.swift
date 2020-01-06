
import UIKit

class RollsViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var basketButton: UIButton!
    @IBOutlet weak var smallLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    //MARK: - Properties
    private let rollCollectionView = RollsCollectionView()
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    }
    
    func setupConstraints() {
        view.addSubview(rollCollectionView)
        rollCollectionView.translatesAutoresizingMaskIntoConstraints = false
        rollCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        rollCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        rollCollectionView.topAnchor.constraint(equalTo: smallLabel.bottomAnchor).isActive=true
        rollCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        rollCollectionView.set(cells: Rolls.fetchSushi())
    }
}

