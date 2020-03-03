// O(nlog(n)) | O(1) space
func twoNumberSum(array: [Int], targetSum: Int) -> [Int] {
  let array = array.sorted()
	var leftPointer: Int = 0
	var rightPointer: Int = array.count - 1

	while (leftPointer < rightPointer) {
		let currentSum = array[leftPointer] + array[rightPointer]

		if currentSum == targetSum {
			return [array[leftPointer], array[rightPointer]]
		} else if currentSum < targetSum {
			leftPointer += 1
		} else if currentSum > targetSum {
			rightPointer -= 1
		}
	}

	return []
}
