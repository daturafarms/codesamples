class Solution:
    def average(self, salary: List[int]) -> float:
        salary.remove (max(salary))
        salary.remove (min(salary))
        avg = sum(salary) / len(salary)
        return avg
