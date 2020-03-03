// O(nlog(n)) | O(1) space
export function twoNumberSum(array: number[], targetSum: number): number[] {
  array.sort((a, b) => a - b);

  let left: number = 0;
  let right: number = array.length - 1;

  while (left < right) {
    const currentSum: number = array[left] + array[right];

    if (currentSum === targetSum) {
      return [array[left], array[right]];
    } else if (currentSum < targetSum) {
      left += 1;
    } else if (currentSum > targetSum) {
      right -= 1;
    }
  }

  return [];
}
