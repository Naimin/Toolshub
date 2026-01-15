# Compound Interest Calculator - Test Checklist

## Automated Tests

### 1. Unit Tests (`test.html`)
- Open `test.html` in a browser
- Tests basic calculation functions
- Verifies mathematical accuracy

### 2. Integration Tests (`integration-test.html`)
- Opens calculator in iframe and tests actual implementation
- Tests DOM interactions and real calculations
- Run by clicking "Run Tests" button

### 3. Console Tests (`test-calculations.js`)
- Copy and paste into browser console on `index.html`
- Tests calculation logic directly

## Manual Test Scenarios

### Basic Functionality Tests

#### Test 1: Simple Compound Interest (Monthly)
- **Input:**
  - Principal: $10,000
  - Rate: 5%
  - Time: 10 years
  - Compounding: Monthly
  - Contribution: $0
- **Expected:** Final amount ≈ $16,470
- **Verify:** Result matches expected value

#### Test 2: Simple Compound Interest (Annual)
- **Input:**
  - Principal: $10,000
  - Rate: 5%
  - Time: 10 years
  - Compounding: Annual
  - Contribution: $0
- **Expected:** Final amount ≈ $16,289
- **Verify:** Result matches expected value

#### Test 3: Monthly Contributions (Monthly Compounding)
- **Input:**
  - Principal: $10,000
  - Rate: 5%
  - Time: 1 year
  - Compounding: Monthly
  - Contribution: $100/month
- **Expected:** Final amount ≈ $22,500
- **Verify:** 
  - Total contributions = $1,200
  - Interest earned is positive
  - Graph shows both lines

#### Test 4: Monthly Contributions (Annual Compounding)
- **Input:**
  - Principal: $10,000
  - Rate: 5%
  - Time: 1 year
  - Compounding: Annual
  - Contribution: $100/month
- **Expected:** Final amount ≈ $22,400
- **Verify:** 
  - Should be slightly less than monthly compounding
  - Graph shows correct stacking

#### Test 5: Annual Contributions (Monthly Compounding)
- **Input:**
  - Principal: $10,000
  - Rate: 5%
  - Time: 2 years
  - Compounding: Monthly
  - Contribution: $1,200/year
- **Expected:** Final amount ≈ $24,500
- **Verify:** Contributions compound correctly

#### Test 6: Annual Contributions (Annual Compounding)
- **Input:**
  - Principal: $10,000
  - Rate: 5%
  - Time: 2 years
  - Compounding: Annual
  - Contribution: $1,200/year
- **Expected:** Final amount ≈ $24,400
- **Verify:** Annual compounding works correctly

### Edge Cases

#### Test 7: Zero Interest Rate
- **Input:**
  - Principal: $10,000
  - Rate: 0%
  - Time: 10 years
  - Contribution: $0
- **Expected:** Final amount = $10,000
- **Verify:** No interest is applied

#### Test 8: Zero Principal
- **Input:**
  - Principal: $0
  - Rate: 5%
  - Time: 10 years
  - Contribution: $100/month
- **Expected:** Final amount = contributions + interest on contributions
- **Verify:** Works with zero principal

#### Test 9: High Interest Rate
- **Input:**
  - Principal: $1,000
  - Rate: 20%
  - Time: 5 years
  - Compounding: Monthly
- **Expected:** Significant growth
- **Verify:** Calculation handles high rates

#### Test 10: Short Time Period
- **Input:**
  - Principal: $10,000
  - Rate: 12%
  - Time: 1 month
  - Compounding: Monthly
- **Expected:** ~$10,100 (1% for 1 month)
- **Verify:** Short periods work correctly

### UI/UX Tests

#### Test 11: Label Updates
- **Action:** Change compounding frequency
- **Verify:** Interest rate label updates to show "Compounded Monthly" or "Compounded Annually"

#### Test 12: Graph Display
- **Verify:**
  - Graph shows Principal + Contributions area (orange)
  - Graph shows Interest Gain area (green)
  - Graph shows Total Amount line (purple)
  - Areas stack correctly
  - Tooltips work on hover

#### Test 13: Auto-calculation
- **Action:** Change any input value
- **Verify:** Results and graph update automatically

#### Test 14: Mobile Responsiveness
- **Action:** Resize browser window or test on mobile device
- **Verify:**
  - Layout adapts correctly
  - Inputs are touch-friendly
  - Graph is readable
  - Text is appropriately sized

### Data Validation Tests

#### Test 15: Negative Values
- **Input:** Negative principal, rate, or time
- **Expected:** Error message or validation
- **Verify:** Invalid inputs are handled

#### Test 16: Very Large Numbers
- **Input:** Principal: $1,000,000, Rate: 10%, Time: 30 years
- **Expected:** Calculation completes without errors
- **Verify:** Handles large numbers correctly

#### Test 17: Decimal Values
- **Input:** Principal: $10,000.50, Rate: 5.25%, Time: 10.5 years
- **Expected:** Calculations work with decimals
- **Verify:** Precision is maintained

### Graph Tests

#### Test 18: Graph Data Accuracy
- **Verify:** Graph data points match calculated values
- **Action:** Hover over graph points
- **Verify:** Tooltips show correct values

#### Test 19: Graph Scaling
- **Action:** Test with different time periods (1 month, 1 year, 10 years, 30 years)
- **Verify:** Graph scales appropriately
- **Verify:** Labels are readable

#### Test 20: Multiple Scenarios Comparison
- **Action:** Calculate same scenario with different compounding frequencies
- **Verify:** Monthly compounding shows higher final amount than annual
- **Verify:** Graph differences are visible

## Test Results Template

```
Date: ___________
Tester: ___________

Test # | Status | Notes
-------|--------|------
1      |        |
2      |        |
3      |        |
...    |        |
```

## Known Expected Values (for verification)

| Scenario | Expected Final Amount (approx) |
|----------|-------------------------------|
| $10K @ 5% for 10y (monthly) | $16,470 |
| $10K @ 5% for 10y (annual) | $16,289 |
| $10K + $100/mo @ 5% for 1y (monthly) | $11,744.62 |
| $10K + $100/mo @ 5% for 1y (annual) | $11,760 |
| $10K + $1.2K/yr @ 5% for 2y (monthly) | $13,630.68 |
| $10K + $1.2K/yr @ 5% for 2y (annual) | $13,608.00 |

## Notes

- Tolerances may vary based on rounding
- Monthly compounding should always yield higher results than annual compounding
- Contributions should always increase the final amount
- Interest should always be positive (unless rate is 0 or negative)
