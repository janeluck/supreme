# Single Number III javascript

用JS感受算法，刷刷leetCode上的题吧:[Single Number III](https://leetcode.com/problems/single-number-iii/)
>Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.

>For example:
Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].

>**Note:**
1. The order of the result is not important. So in the above example, [5, 3] is also correct.
2. Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?


```js

/**
 * @param {number[]} nums
 * @return {number[]}
 */
var singleNumber = function(nums) {
    nums.sort();
    for(var i = nums.length - 1; i > 0; i--){
        if (nums[i] === nums[i-1]) {
            nums.splice(i-1, 2);
            i--;
        }
    }
    return nums;
};

```