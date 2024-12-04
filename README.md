# Ada Constraint_Error Example

This repository demonstrates a common, yet subtle, error in Ada programming: accessing an array outside its defined bounds.  The `bug.ada` file contains code that, under certain conditions, will raise a `Constraint_Error` exception. The `bugSolution.ada` file shows a corrected version.

## Problem

Ada's strong type system and range checks are designed to catch these errors at runtime. However, complex logic or overlooked edge cases can lead to unexpected `Constraint_Error` exceptions, making them difficult to debug if not handled properly.

## Solution

The solution involves careful validation of array indices before access.  Robust error handling (using exceptions or other methods) is essential to manage potential out-of-bounds access attempts gracefully.