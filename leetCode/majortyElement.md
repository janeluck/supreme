# Move Zeroes javascript

用JS感受算法，刷刷leetCode上的题吧:[Majority Element](https://leetcode.com/problems/majority-element/)
>Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 You may assume that the array is non-empty and the majority element always exist in the array.


```js

/**
 * @param {number[]} nums
 * @return {number}
 */
var majorityElement = function(nums) {
    var result;
    nums.sort();
    for(var i = 0; i <= Math.floor(nums.length/2); i++ ){
        if ( nums[i] == nums[ i + Math.floor(nums.length/2) ] ) {
            result = nums[i];
            break;
        }
    }
    return result;
};

```