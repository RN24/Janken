//
//  ViewController.swift
//  Janken
//
//  Created by 西岡亮太 on 2020/05/08.
//  Copyright © 2020 西岡亮太. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    let randomJanken = GKARC4RandomSource()
    
    @IBOutlet weak var cHand: UIImageView!
    @IBOutlet weak var jankenLabel: UILabel!

    //@IBOutlet weak var show: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gu() {
        jankenComputer(player: 0);
    }


    @IBAction func pScissors() {
        jankenComputer(player: 1);
    }
    
    @IBAction func pPaper() {
        jankenComputer(player: 2);
    }
    
    func jankenComputer(player:Int){
        let comp = randomJanken.nextInt(upperBound:3)
   //     show.text = (String(comp)+String(player))
        var msg = ""
        switch comp {
        case 0:
            cHand.image = UIImage(named: "doragu")
            switch player{
            case 0:
                msg = "あいこ"
            case 1:
                msg = "あなたの負け"
            case 2:
                msg = "あなたの勝ち"
            default:
                break
            }
        case 1:
            cHand.image = UIImage(named: "dorachoki")
            switch player{
            case 0:
                msg = "あなたの勝ち"
            case 1:
                msg = "あいこ"
            case 2:
                msg = "あなたの負け"
            default:
                break
            }
        case 2:
            cHand.image = UIImage(named: "dorapa")
            switch player{
            case 0:
                msg = "あなたの負け"
            case 1:
                msg = "あなたの勝ち"
            case 2:
                msg = "あいこ"
            default:
                break
            }
        default:
            break
        }
        jankenLabel.text = msg

    }
    
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
}

