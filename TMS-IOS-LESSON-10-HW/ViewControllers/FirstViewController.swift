import UIKit

class FirstViewController: UIViewController {
    
    private let button: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("Next", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 8
        
        btn.addTarget(self, action: #selector(navigate), for: UIControl.Event.touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .red
        
        view.addSubview(button)
    
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 160),
            button.heightAnchor.constraint(equalToConstant: 56)
        ])
    }

    @objc func navigate() {
        let vc = SecondViewController()
        vc.paramsData = "Params Test"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

