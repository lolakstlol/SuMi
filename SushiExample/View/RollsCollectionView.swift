
import UIKit

class RollsCollectionView: UICollectionView {
    private struct CollectionViewConstants {
        static let errorMessage = "init(coder:) has not been implemented"
        static let dateFormatString = "dd-MM-yyyy"
        static let sideInset: CGFloat = 0.0
        static let minimumLineSpacenig : CGFloat = 10.0
        static let leftDistanceToView : CGFloat = 40.0
        static let rightDistanceToView : CGFloat = 40.0
        static let rollItemWidth = (UIScreen.main.bounds.width - CollectionViewConstants.rightDistanceToView - CollectionViewConstants.leftDistanceToView - (CollectionViewConstants.minimumLineSpacenig / 2)) / 2
        static let rollItemHeight : CGFloat = 350 * 0.8
        
    }
    
    //MARK: - Properties
    var cells = [Rolls]()
    //MARK: - Methods
    init(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero,collectionViewLayout : layout)
        
        setupCollectionView(with: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError(CollectionViewConstants.errorMessage)
    }
    
    func set(cells : [Rolls]){
        self.cells = cells
    }
    
//MARK: - Layout
    func setupCollectionView(with layout: UICollectionViewFlowLayout) {
        delegate = self
        dataSource = self
        register(RollCollectionViewCell.self, forCellWithReuseIdentifier: RollCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = CollectionViewConstants.minimumLineSpacenig
        contentInset = UIEdgeInsets(top: 0, left: CollectionViewConstants.leftDistanceToView, bottom: 0, right: CollectionViewConstants.rightDistanceToView)
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        backgroundColor = .white
    }
}
//MARK: - CollectionView Delegate & DataSource
extension RollsCollectionView : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: RollCollectionViewCell.reuseId, for: indexPath) as! RollCollectionViewCell
        cell.imageView.image = cells[indexPath.row].mainImage
        cell.nameRoll.text = cells[indexPath.row].sushiName
        cell.rollDescription.text = cells[indexPath.row].smallDescription
        cell.rollcost.text = String(cells[indexPath.row].cost)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CollectionViewConstants.rollItemWidth , height: CollectionViewConstants.rollItemHeight)
    }
    
}
