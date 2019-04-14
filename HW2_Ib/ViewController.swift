//
//  ViewController.swift
//  HW2_Ib
//
//  Created by User03 on 2019/4/14.
//  Copyright © 2019 User03. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var looper: AVPlayerLooper?
    var player: AVQueuePlayer?
    

    
    @IBOutlet weak var myImage: SharpImageView!
    @IBOutlet weak var nImage : UITextField! //直接指定換到第i張圖
    @IBOutlet weak var something_cheer: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var alphaValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //沒辦法改到其他地方??
        // Do any additional setup after loading the view, typically from a nib.
        if let url = URL(string:   "https://r3---sn-5njj-u2xl.googlevideo.com/videoplayback?id=o-AOVzT2074kfk1KSrOcAiFfr43yX0JHJv3PkkglFBr2qD&itag=18&source=youtube&requiressl=yes&pl=16&ei=MM-yXLaUNYSp7gO21KigDQ&pcm2=no&mime=video/mp4&gir=yes&clen=272259119&ratebypass=yes&dur=3298.858&lmt=1553874771967424&fvip=1&c=WEB&txp=5531432&ip=178.162.205.109&ipbits=0&expire=1555243921&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,itag,lmt,mime,mip,mm,mn,ms,mv,pcm2,pl,ratebypass,requiressl,source&key=cms1&signature=542AE49D7D267BFD10C073881475BDCC90E94C83.44F693E135DAD2A65F4507DC05B6266D3C7140A6&title=One_Piece_All_Openings_1-20&cms_redirect=yes&mip=140.121.196.88&mm=31&mn=sn-5njj-u2xl&ms=au&mt=1555222275&mv=m"){
            let player = AVQueuePlayer()
            let item = AVPlayerItem(url: url)
            looper = AVPlayerLooper(player: player, templateItem: item)
            player.play()
            
        }
    }

    
    @IBAction func changeMyImage(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            myImage.image = UIImage(named: "01")
        }
        else if sender.selectedSegmentIndex == 1{
            myImage.image = UIImage(named: "02")
        }
        else if sender.selectedSegmentIndex == 2 {
            myImage.image = UIImage(named: "03")
        }
        else if sender.selectedSegmentIndex == 3{
            myImage.image = UIImage(named: "04")
        }
        else if sender.selectedSegmentIndex == 4{
            myImage.image = UIImage(named: "05")
        }
        else{
            myImage.image = UIImage(named: "06")
        }
    }
    
    @IBAction func ask_something(_ sender: Any) {
        let num = Int.random(in: 0...5)
        if num == 1{
            something_cheer.text = "我要成為海賊王"
        }
        else if num == 2{
            something_cheer.text = "想要我的財寶嗎？想要的話就去找吧"
        }
        else if num == 3{
            something_cheer.text = "這是男人的承諾"
        }
        else if num == 4{
            something_cheer.text = "我要自由地活著"
        }
        else{
            something_cheer.text = "我很棒"
        }
    }
    
    //確認textField 有輸入
    /*
    @IBAction func selectPicture(_ sender: Any) {
        nImage.resignFirstResponder()
        if nImage.text == ""{
            messageLabel.text = "yeeèeę"
        }
        else{
            //do nothing
        }
    }
 */
    
    /*
    @IBAction func alpha(_ sender: UISlider) {
       let stri = "\(sender.value)"
       alphaValue.text = stri
       myImage.alpha = CGFloat(sender.value)
    }
 */
    
}

