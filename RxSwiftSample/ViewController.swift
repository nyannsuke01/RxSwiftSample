//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by user on 2020/11/04.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.rx.text.orEmpty
        .bind(to: label.rx.text)
        .disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

