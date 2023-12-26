import UIKit

class FivesViewController: UIViewController {
    
    var label: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    
    private let button: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("Root VC", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 8
        
        btn.addTarget(self, action: #selector(navigate), for: UIControl.Event.touchUpInside)
        return btn
    }()
    
    
    private let buttonSecond: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("Pass Class", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 8
        
        btn.addTarget(self, action: #selector(passStructure), for: UIControl.Event.touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .purple
        
        view.addSubview(button)
        view.addSubview(label)
        view.addSubview(buttonSecond)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 160),
            button.heightAnchor.constraint(equalToConstant: 56),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 50),
            buttonSecond.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonSecond.topAnchor.constraint(equalTo: button.topAnchor, constant: 100),
            buttonSecond.widthAnchor.constraint(equalToConstant: 160),
            buttonSecond.heightAnchor.constraint(equalToConstant: 56),
        ])
    }

    @objc func navigate() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func passStructure() {
        let vc = SixViewController()
        vc.passedClass = Test()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}


