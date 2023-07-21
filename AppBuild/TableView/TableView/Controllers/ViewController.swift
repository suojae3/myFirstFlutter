//
//  ViewController.swift
//  TableView
//
//  Created by ㅣ on 2023/04/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var moviesArray: [Movie] = [
    
        Movie(movieImage: UIImage(named: "batman.png"), movieName: "배트맨", movieDescription: "배트맨이 출연하는 영화"),
        Movie(movieImage: UIImage(named: "captain.png"), movieName: "캡틴 아메리카", movieDescription: "캡틴 아메리카의 기워느 캡팁 아메리카는 어떻게 탄생하게 되었을까?"),
        Movie(movieImage: UIImage(named: "ironman.png"), movieName: "아이언맨", movieDescription: "토니스타크의 출현, 아이언맨이 탄생게된 계기"),
        Movie(movieImage: UIImage(named: "hulk.png"), movieName: "헐크", movieDescription: "헐크 탄생 배경을 알 수 있는 내용"),
        Movie(movieImage: UIImage(named: "spiderman.png"), movieName: "스파이더맨", movieDescription: "스파이더맨 탄생 배경을 알 수 있는 영화"),
        Movie(movieImage: UIImage(named: "blackpanther.png"), movieName: "블랙팬서", movieDescription: "블랙팬서 탄생 배경을 알 수 있는 영화"),
        Movie(movieImage: UIImage(named: "doctorstrange.png"), movieName: "닥터스트레인지", movieDescription: "닥터스트레인지 탄생 배경을 알 수 있는 영화"),
        Movie(movieImage: UIImage(named: "guardians.png"), movieName: "가디언즈", movieDescription: "가디언즈 탄생 배경을 알 수 있는 영화"),
        Movie(movieImage: UIImage(named: "spiderman2.png"), movieName: "스파이더맨2", movieDescription: "스파이더맨1의 후속편")
    ]
    
    

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableview.delegate 와 동일, 여기서 self는 뷰컨
        // 즉 테이블뷰의 대리자로 뷰컨을 지정해주는 것과 같은 의미
        tableView.dataSource = self
        tableView.rowHeight = 120
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //스토리보드에 만들어놓았던 프로토타입의 셀을 꺼내서 쓸거야~
        //MovieCell이라는 셀을 꺼내서 cell에 넣어 그런데 UITableView타입이야, 나는 MovieCell로 타입캐스팅해서 접근하고 싶어
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! movieCellTableViewCell
 
        // 메인이미지 뷰의 이미지를 몇번째 행에 넣는다!
        cell.mainImageView.image = moviesArray[indexPath.row].movieImage
        cell.movieNameLabel.text = moviesArray[indexPath.row].movieName
        cell.descriptionLabel.text = moviesArray[indexPath.row].movieDescription
        
        return cell
    }

        }

