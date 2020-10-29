//
//  InputPageController.swift
//  HoroscopeApp
//
//  Created by MCT on 28.10.2020.
//

import UIKit

class InputPageController: UIViewController{
    

    // MARK: Properties
    
    var param: [String:Any]? = nil
    
    // MARK: View
    
    let stackView: UIStackView = {
        let  stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.spacing = 8
        return stack
    }()

    lazy var dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Day:"
        return label
    }()
    
    lazy var dayTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:24"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    lazy var monthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Month:"
        return label
    }()
    
    lazy var monthTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:3"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    lazy var yearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Year:"
        return label
    }()
    
    lazy var yearTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:1992"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    let hourAndMinStackView: UIStackView = {
        let  stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.spacing = 8
        return stack
    }()
    
    lazy var hourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Hour:"
        return label
    }()
    
    lazy var hourTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:19"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    lazy var minLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Min:"
        return label
    }()
    
    lazy var minTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:55"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    lazy var timeZoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "timeZone:"
        return label
    }()
    
    lazy var timeZoneTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:3"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    let latAndLonStackView: UIStackView = {
        let  stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.spacing = 8
        return stack
    }()
    
    lazy var latLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "lat:"
        return label
    }()
    
    lazy var latTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:24,221"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    lazy var lonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "lon:"
        return label
    }()
    
    lazy var lonTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.borderStyle = .roundedRect
        textFeild.placeholder = "ex:7,2345"
        textFeild.keyboardType = .numberPad
        return textFeild
    }()
    
    let sendButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Search My Ino", for: .normal)
        button.tintColor = UIColor.black
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 15
        return button
    }()
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(dayLabel)
        stackView.addArrangedSubview(dayTextField)
        stackView.addArrangedSubview(monthLabel)
        stackView.addArrangedSubview(monthTextField)
        stackView.addArrangedSubview(yearLabel)
        stackView.addArrangedSubview(yearTextField)
        
        view.addSubview(hourAndMinStackView)
        hourAndMinStackView.addArrangedSubview(hourLabel)
        hourAndMinStackView.addArrangedSubview(hourTextField)
        hourAndMinStackView.addArrangedSubview(minLabel)
        hourAndMinStackView.addArrangedSubview(minTextField)
        hourAndMinStackView.addArrangedSubview(timeZoneLabel)
        hourAndMinStackView.addArrangedSubview(timeZoneTextField)
        
        view.addSubview(latAndLonStackView)
        latAndLonStackView.addArrangedSubview(latLabel)
        latAndLonStackView.addArrangedSubview(latTextField)
        latAndLonStackView.addArrangedSubview(lonLabel)
        latAndLonStackView.addArrangedSubview(lonTextField)
        
        view.addSubview(sendButton)
        sendButton.addTarget(self, action: #selector(sendButtonTaouched), for: .touchUpInside)
        
        setUpUI()
    }
    
    // MARK: Func
    
    func setUpUI(){
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            
            hourAndMinStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            hourAndMinStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            hourAndMinStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            hourAndMinStackView.heightAnchor.constraint(equalToConstant: 50),
            
            latAndLonStackView.topAnchor.constraint(equalTo: hourAndMinStackView.bottomAnchor, constant: 16),
            latAndLonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            latAndLonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            latAndLonStackView.heightAnchor.constraint(equalToConstant: 50),
            
            sendButton.topAnchor.constraint(equalTo: latAndLonStackView.bottomAnchor, constant: 16),
            sendButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            sendButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @objc func sendButtonTaouched(_ sender: UIButton){
        
        valideFileds()
        
        self.navigationController?.pushViewController(DetailController(param: param!), animated: true)
        
    }
    
    func valideFileds(){
        guard let day = dayTextField.text, let month = monthTextField.text,
              let year = yearTextField.text, let hour = hourTextField.text,
              let min = minTextField.text, let lat = latTextField.text,
              let lon = lonTextField.text, let timeZone = timeZoneTextField.text else {
            return
        }
        
        param = [
           "day" : day,
           "month": month,
           "year": year,
           "hour": hour,
           "min": min,
           "lat": lat,
           "lon": lon,
           "tzone": timeZone
       ]
    }
}
