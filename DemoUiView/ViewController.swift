//
//  ViewController.swift
//  DemoUiView
//
//  Created by Trần Văn Cam on 04/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        
        //Tại sao lại phải dùng super? vì ViewController kế thừa thằng cha là UIViewController và hàm của ta là ghi đè "override" nên ta phải gọi hàm super của thằng cha trước thực hiện rồi thực hiện thằng con
        super.loadView()
        // Load các thành phần nằm trong viewcontroller
        print("Load view")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // View đã được load xong, ViewDidLoad chỉ được gọi một lần duy nhất trong cả vòng đời của ViewController
        addNewView()
        //view.backgroundColor = .green
    }
    
    func addNewView() {
        let blackView = UIView()
        // set vị trí và kích thước cho blackView trong view chứa nó
        blackView.frame = CGRect(x: 20, y: 600, width: 100, height: 150)
        blackView.backgroundColor = UIColor.black // Set màu background
        
        view.addSubview(blackView) // add blackView vào superView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hàm gọi khi view chuẩn bị hiển thị lên màn hình
        print("Will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Hàm gọi khi ViewController đã hiển thị trên màn hình
        print("did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Hàm gọi khi ViewController sắp bị ẩn đi
        print("Will appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Hàm gọi  khi ViewController đã bị ẩn đi
        print("Did disappear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // Hàm sẽ khi chuẩn bị thay đổi layou ngang/dọc
        print("will layout subview")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Hàm sẽ được gọi khi quay ngang/dọc màn hình
        print("Did layout subview")
    }
}

