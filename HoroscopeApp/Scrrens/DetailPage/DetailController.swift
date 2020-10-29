//
//  DetailController.swift
//  HoroscopeApp
//
//  Created by MCT on 29.10.2020.
//

import UIKit

class DetailController: UIViewController {

    // MARK: Properties
    
    var param: [String:Any]! = nil
    var astroDetail: AstroDetailModel? = nil
    
    private var detailViewModel: DetailViewModelType?
    
    // MARK: View
    
    var ascendantLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Ascendant"
        label.numberOfLines = 0
        return label
    }()
    
    var ascendantlordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "AscendantLord:"
        label.numberOfLines = 0
        return label
    }()
    
    var signLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Sign:"
        label.numberOfLines = 0
        return label
    }()
    
    var signLordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "SignLord:"
        label.numberOfLines = 0
        return label
    }()
    
    
    // MARK:  LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailViewModel = DetailViewModel()
        
        view.addSubview(ascendantLabel)
        view.addSubview(ascendantlordLabel)
        view.addSubview(signLabel)
        view.addSubview(signLordLabel)
        
        fetchData()
        setUpUI()
        reloadView()
    }
    
    init(param: [String:Any]) {
        self.param = param
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Func
    
    func fetchData() {
        
        detailViewModel?.fetchData(param: param, completion: { (response) in
            switch response {
            case .success(_):
                break
            case .failure(_):
                break
            }
        })
    }
    
    func setUpUI(){
        
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            ascendantLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            ascendantLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            ascendantLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            ascendantLabel.heightAnchor.constraint(equalToConstant: 50),
            
            ascendantlordLabel.topAnchor.constraint(equalTo: ascendantLabel.bottomAnchor, constant: 8),
            ascendantlordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            ascendantlordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            ascendantlordLabel.heightAnchor.constraint(equalToConstant: 50),
            
            signLabel.topAnchor.constraint(equalTo: ascendantlordLabel.bottomAnchor, constant: 8),
            signLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            signLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            signLabel.heightAnchor.constraint(equalToConstant: 50),
            
            signLordLabel.topAnchor.constraint(equalTo: signLabel.bottomAnchor, constant: 8),
            signLordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            signLordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            signLordLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func reloadView(){
        
        self.detailViewModel?.resultsDidChange = { [weak self] _ in
            guard let returnResult = self?.detailViewModel?.returnRetult() else {
                return
            }
            self?.astroDetail = returnResult
            self?.ascendantLabel.text = "Ascendant: \(returnResult.ascendant)"
            self?.ascendantlordLabel.text = "Ascendant: \(returnResult.ascendantLord)"
            self?.signLabel.text =  "Sign: \(returnResult.sign)"
            self?.signLordLabel.text =  "Signlord: \(returnResult.signLord)"
        }
    }
}
