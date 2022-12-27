// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-array.prototype.reduceright
es5id: 15.4.4.22-3-20
description: >
    Array.prototype.reduceRight - value of 'length' is an Object which
    has an own valueOf method
---*/

var testResult1 = true;
var testResult2 = false;

function callbackfn(prevVal, curVal, idx, obj) {
  if (idx > 1) {
    testResult1 = false;
  }

  if (idx === 1) {
    testResult2 = true;
  }
  return false;
}

var valueOfAccessed = false;

var obj = {
  0: 12,
  1: 11,
  2: 9,
  length: {
    valueOf: function() {
      valueOfAccessed = true;
      return 2;
    }
  }
};

Array.prototype.reduceRight.call(obj, callbackfn, 1);

assert(testResult1, 'testResult1 !== true');
assert(testResult2, 'testResult2 !== true');
assert(valueOfAccessed, 'valueOfAccessed !== true');
