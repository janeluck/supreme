﻿# Move Zeroes javascript

用JS感受算法，刷刷leetCode上的题吧:[Move Zeroes](https://leetcode.com/problems/move-zeroes/)
>Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
>**Note:**
You must do this in-place without making a copy of the array.
Minimize the total number of operations.


```js

/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
var moveZeroes = function(nums) {
    for(var i = nums.length; i >= 0; i--) {
        if (nums[i] == 0) {
            nums.splice(i, 1);
            nums.push(0);
        }
    }
};

```