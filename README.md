# Unexpected Negative Output in Julia Function

This repository demonstrates a common error in Julia where a function might return unexpected negative values for positive inputs due to a subtle type-related issue.  The error is resolved by explicitly defining the return type of the function.

## Bug Description

The `myfunction` is intended to square positive inputs and negate negative inputs. However, due to implicit type conversions within the `if/else` block, positive inputs that would normally result in large positive values are unexpectedly returned as negative.  This stems from an integer overflow that occurs before the return type is properly determined.

## Bug Solution

The issue is fixed by explicitly stating the return type of the function as `Float64`. This forces Julia to perform the calculations with floating-point numbers, preventing the integer overflow and leading to the expected results.