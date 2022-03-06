class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        digitsum = sum(int(digit) for digit in str(n))
        digitmul = prod(int(digit) for digit in str(n))
        answer = digitmul - digitsum
        return answer
