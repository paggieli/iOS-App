//
//  ViewController.swift
//  星座解析
//
//  Created by Admin on 2017/3/23.
//  Copyright © 2017年 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txt_birth: UITextField!
    @IBOutlet weak var datepk_birth: UIDatePicker!
    @IBOutlet weak var label_star: UILabel!
    @IBOutlet weak var slid_sex: UISegmentedControl!
    @IBOutlet weak var txtview_desc: UITextView!
    
    
    @IBAction func btn_showdatepk(_ sender: Any) {
        datepk_birth.isHidden = false
        label_star.isHidden = true
        txtview_desc.isHidden = true
    }
    
    @IBAction func datepk_change(_ sender: Any) {
        
        // 設置要顯示在 UILabel 的日期時間格式
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        // 更新 UILabel 的內容
        txt_birth.text = formatter.string(from:
            datepk_birth.date)
        
    }
    
  
    
    @IBAction func btn_search(_ sender: Any) {
        
        datepk_birth.isHidden = true
        
        // 取得選擇的日期轉進行判斷
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        let date_dob = datepk_birth.date

        //摩羯座(12/22~01/29)
        if(date_dob >= formatter.date(from: "12/22/2017")! && date_dob <= formatter.date(from: "01/29/2018")!){
          label_star.text! = "摩羯座Capricorn(12/22~01/29)"
          txtview_desc.text! = "魔羯座的人，具有很強的耐力，以及不屈不撓的奮鬥精神。這種忠厚老實的態度，大多數人都會很欽佩。魔羯座的人，由於過於潔癖或不願意妥協，以及道德觀過強的結果，常使得人際關係並不太理想，因而常覺得是個很孤獨的人。"
        }
        
        
        //水瓶座(01/20~02/18)
        if(date_dob >= formatter.date(from: "01/20/2017")! && date_dob <= formatter.date(from: "02/18/2017")!){
            label_star.text! = "水瓶座Aquarius(01/20~02/18)"
            txtview_desc.text! = "水瓶座的人頗富知性，且具有銳利的觀察力、推測能力、以及富有冒險的開拓精神。求知慾逐漸加強後，會對任何事物都深入去思考，對於社會種種的不平等以及矛盾現象，總產生懷疑的態度或不平之心，而逐漸傾向反體制的思想。因而，有時甚至會變成孤獨的異端者，或表現出較激進的行動。"
        }

        
        //雙魚座(02/19~03/20)
        if(date_dob >= formatter.date(from: "02/19/2017")! && date_dob <= formatter.date(from: "03/20/2017")!){
            label_star.text! = "雙魚座(02/19~03/20)"
            txtview_desc.text! = "雙魚座的人是心地溫暖，感情豐富的，喜愛羅曼蒂克的氣氛。對任何人都很親切，很易投入他人的懷抱，信任他人。看到別人受傷害，往往忘卻自己能力，為他人努力，勞心，易信他人，為他人盡力，也想獲得他人的好感，若對方對你太過於現實，破壞你的夢幻和希望，你就會表示不滿心情大抱不平。"
        }
        
        
        //牡羊座(03/21~04/19)
        if(date_dob >= formatter.date(from: "03/21/2017")! && date_dob <= formatter.date(from: "04/19/2017")!){
            label_star.text! = "牡羊座Aries(03/21~04/19)"
            txtview_desc.text! = "牡羊座的人，心中充滿正義感，以及強而有力的行動力，經常可以領導別人，坦誠的表達自己的意見，開朗的鼓勵同事，並受到別人的信賴和尊敬。此外，牡羊座的人。不願意墨守成規、固守陋習，其思想是屬於走在時代尖端的革新派。因此，也就會較沒耐性，有急躁、好強的傾向。"
        }
        
        
        //金牛座(04/20~05/20)
        if(date_dob >= formatter.date(from: "04/20/2017")! && date_dob <= formatter.date(from: "05/20/2017")!){
            label_star.text! = "金牛座Taurus(04/20~05/20)"
            txtview_desc.text! = "金牛座的性格就像牛一般，態度穩定，處世相當慎重，但在另一方面也很頑固，只要一發起脾氣來，往往沒有人能夠阻止。金牛座的人，經常滿面笑容，不愛管閒事，也不會破壞別人的和平相處，可算是相當高明的社交高手。在他的心中，充滿著一股不認輸的好強心理，一旦發起脾氣來，就會暴露出難以想像的兇暴一面，往往令四周的人感到驚訝。"
        }
        
        
        //雙子座(05/21~06/20)
        if(date_dob >= formatter.date(from: "05/21/2017")! && date_dob <= formatter.date(from: "06/20/2017")!){
            label_star.text! = "雙子座Gemini(05/21~06/20)"
            txtview_desc.text! = "雙子座的人，在性格方面的最大特徵便是具有極敏銳的觀察力。雙子座的人，手藝十分靈巧，在各方面也都能表現出自己的才能。然而另一方面來說，也就犯了樣樣都懂，卻樣樣不精的毛病。強烈的好奇心，和不斷吸收新知識的慾望，會使雙子座的人經常保持年輕、且富有魅力，使得眾多的朋友圍繞在他的四周。"
        }
        
        
        //巨蟹座(06/21~07/22)
        if(date_dob >= formatter.date(from: "06/21/2017")! && date_dob <= formatter.date(from: "07/22/2017")!){
            label_star.text! = "巨蟹座Cancer(06/21~07/22)"
            txtview_desc.text! = "巨蟹座的人較保守，能享受歡樂，並結交朋友，不自私或虛榮，坦白，大方，正直，忠於朋友和個人的信仰，能夠託付以重要秘密職務或工作。有很好的領悟力和觀察力，喜歡沈思，非常專心，勤於分析自己的思想和衝動，想像力非常活躍，喜歡默想過去曾發生的事，能分析自己內在的衝動，有優越的直覺力，有一顆敏感親愛，但是保守的心，不常表露真情，溫柔，體貼，親愛，看重愛情，鍾愛自己所愛的人，並有嫉妒的傾向，非常喜歡小孩。屬羅曼蒂克型，不過，有的時候心不在焉，性情不定。"
        }

        
        //獅子座(07/23~08/22)
        if(date_dob >= formatter.date(from: "07/23/2017")! && date_dob <= formatter.date(from: "08/22/2017")!){
            label_star.text! = "獅子座Leo(07/23~08/22)"
            txtview_desc.text! = "獅子座的人，性格相當於百獸之王的獅子，堅強、可靠、驕傲、寬大。他的一切做為都很誠實，對於依賴他的人，即使犧牲自己，也會妥善照顧對方。由於獅子座的人，天生就具有王者的氣質，所以的確也能了解別人的痛苦。不過，有時候他又好似要忘掉寂寞與虛偽一般，而沈迷於遊樂之中。因有著脾氣暴躁、頑固，以及不願意妥協的個性。"
        }
        
        
        //處女座(08/23~09/22)
        if(date_dob >= formatter.date(from: "08/23/2017")! && date_dob <= formatter.date(from: "09/22/2017")!){
            label_star.text! = "處女座Virgo(08/23~09/22)"
            txtview_desc.text! = "處女座的人並非刻意要去找別人的麻煩，只是他天性中便有愛挑毛病的習慣，因此，往往得不到真相。這也就是處女座的人最大的缺點，應加以注意。處女座的人，如果能將天生具備的旺盛求知慾，以及敏銳的感受力相互配合，以追求更高的理想，就能創造出不凡的事業。為人勤勉，一絲不苟，喜歡接觸社會，行事採取合理主義，是一個對社會頗有貢獻的人。對人體貼入微，做起事來也有大將之風，但是有時過於小心，反而無法掌握大綱，不過大體上是一個有計畫的人，而且一向本著良心做事。"
        }
        
        
        //天秤座(09/23~10/22)
        if(date_dob >= formatter.date(from: "09/23/2017")! && date_dob <= formatter.date(from: "10/22/2017")!){
            label_star.text! = "天秤座Libra(09/23~10/22)"
            txtview_desc.text! = "一般而言，天秤座的人的生活是平凡和快樂的。天秤座的人會永遠保持絕不受傷害的八面玲瓏、圓滑態度，所以，不喜歡表現出內心的真相。個性穩健而理智。有優秀的平衡感和公正的判斷力，善於協調，在相反的意見中往往能擔負起調停的責任。凡事講求邏輯和策略，絕對不以暴力解決事情，而是以巧妙的手腕，在對等的權利和利害中找出平衡點。優柔而不寡斷，八面玲瓏，頗有社交才華，容易搏得在上位者的眷顧和禮遇。"
        }
        

        //天蠍座(10/23~11/21))
        if(date_dob >= formatter.date(from: "10/23/2017")! && date_dob <= formatter.date(from: "11/21/2017")!){
            label_star.text! = "天蠍座Scorpio(10/23~11/21))"
            txtview_desc.text! = "天蠍座的人報復心很強，而且又稍膽小，故對保護自己特別敏感。個性強烈衝動。有足夠的精力和膽識，不懼艱難。觀察力敏銳，經常能夠洞悉事情的真相，對事物也有獨到的見解。行事時，採用完全的破壞和創新方式，充滿神祕的色彩。從無害人之心，但是人若負我，則會反擊報復對方，採取適當的回應手段。對精神和物質的要求很高，同時也付出相當的努力，奮戢不懈，對愛恨的反應，十分強烈。"
        }
        
        
        //射手座(11/22~12/21)
        if(date_dob >= formatter.date(from: "11/22/2017")! && date_dob <= formatter.date(from: "12/21/2017")!){
            label_star.text! = "射手座Sagittarius(11/22~12/21)"
            txtview_desc.text! = "射手座的人是忠心的、大方而無拘無束，精力充沛，好爭論，脾氣急躁，對權位有野心，對受磨難及壓迫的人有慈悲的心腸。在性格方面，是誠實，真心，坦白和值得信任的。在脾氣方面，對自己的朋友是仁慈大方的，在許多事情上都很圓滑，很懂得外交手腕。精神力量強，討厭一切不文雅的舉動，厭惡粗劣的東西，有貴族氣息的人，儀表態度是極明朗而具有鼓舞性的，有個性與膽識，勇猛，自尊心強。愛好自由，本性很民主，喜歡交朋友。"
        }
        
        
        label_star.isHidden = false
        txtview_desc.isHidden = false


    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

