// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-array.prototype.foreach
es5id: 15.4.4.18-1-2
description: Array.prototype.forEach applied to null
---*/


assert.throws(TypeError, function() {
  Array.prototype.forEach.call(null); // TypeError is thrown if value is null
});
