



import UIKit

class FirstViewControleler: UIViewController {
    
    var isLoggedIn = false
    
    override func viweDidLoad() {
        super.viweDidLoad()
        makeUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 로그인 되어있지 않다면 로그인 화면 띄우기
        if !isLoggedIn {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false, completion:  nil)
        }
    }
    
    

    func makeUI() {
        view.backgroundColor = .gray
        
        // 네비게이션바 설정관련 iOS 버전 업데이트 되면서 바뀐 설정
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() //불투명으로
        
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "Main"
        

        
    }
    
    
    
    
    
    
    
    
}
