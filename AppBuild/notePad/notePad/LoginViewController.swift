


import UIKit

class LoginViewController: UIViewController {
    
    //로그인버튼
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()

    // 굳이 뷰를 따로 만들지 안았음 --- MVC 패턴으로 만들지 않았음
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    //버튼 누르면 동작하는 코드 ===> 로그인하면. 디스미스 (탭바가 더 아래에 깔려있음)
    @objc func loginButtonTapped() {
        
        
        dismiss(animated: true, completion: nil)
        
    }

}
