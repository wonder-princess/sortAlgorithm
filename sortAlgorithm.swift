    var arrayInt:[Int] = [8, 1, 5, 9, 6, 2]
    var arrayStr:[String] = ["あ", "c", "を", "a"]
    
    print(arrayStr)
//    sortString(arrayStr)
    

    
    print("ソートする文字列「,」で区切ってを入力してください")
    print("文字列と数字を混ぜたら殺す")
    
    let getString:String = ""    
    
    print("昇順 → 1")
    print("降順 → 2")
    
    let getSortType:String = ""
/*    
    let separatedStr:[String] = readStr(String)
    

    /*----- コロコロ仕様を変えるなハゲ -------------
    ------- 現行の空白削除とセパレートは -----------
    ------- どうすればいいんだよ -----------------*/
    func readStr(_ str: String) -> [String] {
        str = str.remove(characterSet: .whitespaces)
        let arr:[String] = str.components(separatedBy: ",")
        return arr
    }
*/

    if getSortType == "1"{
        do { try sortInt(arrayStr, false) }
        catch {sortString(arrayStr, false) }
    }
    
    if getSortType == "2"{
        do { try sortInt(arrayStr, true) }
        catch {sortString(arrayStr, true) }
    }
    
    func sortInt(_ arrInt:[String], _ des:Bool)
    {
        var arr:Array<Int> = changeInt(arrInt)
        arr = bubbleSort(arr)
        if des {
            print(descending(arr))
        }else{
        print(arr)
        }
    }
    
    func sortString(_ arrayStr:[String], _ des:Bool) 
    {
        var arr:Array<Int> = changeUnicodeInt(arrayStr)
        arr = bubbleSort(arr)
//        var dic: Dictionary<Int, String> = changeUnicodeDic(arrayStr)
//        arr = changeChar(arr)
        if des {
            print(descending(arr))
        }else{
        print(arr)
        }
    }
    
    func changeInt(_ arr:[String]) -> [Int]
    {
        var arrInt: Array<Int> = Array<Int>()
        for num in arr
        {
            arrInt.append(Int(num)!)
        }
        return arrayInt
    }
    
    
    func changeUnicodeInt(_ arrayStr :[String]) -> [Int]
    {
        var arr: Array<Int> = Array<Int>() 
        for str in arrayStr{
            var codeArr : Array<String> = Array<String>()
            for code in str.unicodeScalars
            {
                codeArr.append(String(code.value))
            }
            var uniNum = Int(codeArr.joined())!
            arr.append(uniNum)
        }
        return arr
    }
/*    
    func changeUnicodeDic(_ arrayStr :[String]) -> Dictionary<Int, String>
    {
        var dic: Dictionary<Int, String> = Dictionary<Int, String>()
        for str in arrayStr{
            var codeArr : Array<String> = Array<String>()
            for code in str.unicodeScalars
            {
                codeArr.append(String(code.value))
            }
            var uniNum = Int(codeArr.joined())!
            dic.updateValue(str, forKey : uniNum)
        }
        return dic
    }
*/    

    
    
    func changeChar(_ arr:[Int])
    {
        var arrUInt32:Array<Any> = Array<Any>()
        
        for num in arr
        {
            
//            var a = str.unicodeScalars.map{s -> UInt32 in s.value}
//            print(type(of: a))
//            print(a)

            var uint32 = UInt32(num)

            
/*
            var b = c.compactMap(UnicodeScalar.init)
            .map(Character.init)
            .map(String.init)
*/
//            print(type(of: c))
//            print(b)
        }
//        print(UInt32.compactMap(UnicodeScalar.init).map(Character.init).map(String.init))
    }


    func bubbleSort(_ arr:[Int]) -> [Int] {
        var arr:[Int] = arr
        for x in arr{
            var y:Int = 0
            for y in 0..<arr.count-1{
                if arr[y] > arr[y+1]{
                    var num:Int = arr[y]
                    arr[y] = arr[y+1]
                    arr[y+1] = num
                }
            }
        }
        return arr
    }
    
    func descending(_ arr :[Any]) -> [Any] {
        var desArr:Array<Any> = Array<Any>()
        var count:Int = arr.count-1
        for i in 0..<arr.count-1
        {
            desArr.append(arr[count])
            count -= 1
        }
        return desArr
    }