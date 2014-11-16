func partition(inout dataList: [Int], low: Int, high: Int) -> Int {
    var pivotPos = low
    var pivot = dataList[low]
    
    for var i = low + 1; i <= high; i++ {
        if dataList[i] < pivot && ++pivotPos != i {
            (dataList[pivotPos], dataList[i]) = (dataList[i], dataList[pivotPos])
        }
    }
    (dataList[low], dataList[pivotPos]) = (dataList[pivotPos], dataList[low])
    return pivotPos
}

func quickSort(inout dataList: [Int], left: Int, right: Int) {
    if left < right {
        var pivotPos = partition(&dataList, left, right)
        quickSort(&dataList, left, pivotPos - 1)
        quickSort(&dataList, pivotPos + 1, right)
    }
}

var dataList = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]
quickSort(&dataList, 0, dataList.count - 1)

