// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-array.prototype.every
es5id: 15.4.4.16
description: Array.prototype.every must exist as a function
---*/

var f = Array.prototype.every;

assert.sameValue(typeof(f), "function", 'typeof(f)');
