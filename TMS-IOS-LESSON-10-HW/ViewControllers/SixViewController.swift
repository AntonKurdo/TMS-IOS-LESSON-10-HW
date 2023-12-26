import UIKit

class SixViewController: UIViewController {
    
    var label: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    
    var passedClass: Test? {
        didSet {
            if(passedClass != nil) {
                label.text = "\(passedClass!.first) - \(passedClass!.second) - \(passedClass!.third)"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .systemIndigo
        
        view.addSubview(label)
    
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
}

