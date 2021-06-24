//
//  ViewController.swift
//  HashesandPluses
//
//  Created by Daniel Washington Ignacio on 23/06/21.
//

/*
 Create a function that returns the number of hashes and pluses in a string.

 Examples

 hashPlusCount("###+") ➞ [3, 1]

 hashPlusCount("##+++#") ➞ [3, 3]

 hashPlusCount("#+++#+#++#") ➞ [4, 6]

 hashPlusCount("") ➞ [0, 0]
 Notes

 Return [0, 0] for an empty string.
 Return in the order of [hashes, pluses].
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.hashPlusCount("###+"))
        print(self.hashPlusCount("##+++#"))
        print(self.hashPlusCount("#+++#+#++#"))
        print(self.hashPlusCount(""))
    }

    func hashPlusCount(_ str: String) -> [Int] {
        var hashes: Int = 0
        var pluses: Int = 0
        var arr: [Int] = []
        for n in str{
            if n == "#" {
                hashes = hashes + 1
            }else{
                pluses = pluses + 1
            }
        }
        arr.append(hashes)
        arr.append(pluses)
        return arr
    }

}

