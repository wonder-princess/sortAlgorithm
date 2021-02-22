/*
var (str1, str2, str3, str4) = ("", "", "", "")

str1 = "あ"
str2 = "を"
str3 = "a"
str4 = "A"

for code in str1.unicodeScalars
{
    print(code.value)
}

for code in str2.unicodeScalars
{
    print(code.value)
}

for code in str3.unicodeScalars
{
    print(code.value)
}

for code in str4.unicodeScalars
{
    print(code.value)
}


print(str1 + str2 + str3)
*/

var arrayInt :[Int] = [8, 1, 5, 9, 6, 2]
var arrayStr :[String] = ["あ", "c", "を", "a"]

print(arrayStr)
sortString(arrayStr)

    func sortString(_ arrayStr :[String]) 
    {
        var arr: Array<Int> = changeUnicodeInt(arrayStr)
        arr = bubbleSort(arr)
//        var dic: Dictionary<Int, String> = changeUnicodeDic(arrayStr)
        print(arr)
        changeChar(arr)
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

    
    
    func changeChar(_ arr :[Int])
    {
        var arrUInt32: Array<Any> = Array<Any>()
        
        for num in arr
        {
            
//            var a = str.unicodeScalars.map{s -> UInt32 in s.value}
//            print(type(of: a))
//            print(a)

            var uint32 = UInt32(num)
            var str = uint32.map(Character.init).map(String.init)

            
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


    func bubbleSort(_ arr :[Int]) -> [Int] {
        var arr :[Int] = arr
        for x in arr{
            var y :Int = 0
            for y in 0..<arr.count-1{
                if arr[y] > arr[y+1]{
                    var num :Int = arr[y]
                    arr[y] = arr[y+1]
                    arr[y+1] = num
                }
            }
        }
        return arr
    }

//print(bubbleSort(arrayInt))