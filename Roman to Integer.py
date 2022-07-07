class Solution:
    def romanToInt(self, s: str) -> int:
        translation_table = {'I':1, 'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}
        order = list(translation_table.keys())
        #['I','V','X','L','C','D','M']
        
        total_sum = 0  
        
        for i in range(0,len(s) - 1):
            if order.index(s[i]) >= order.index(s[i+1]):
                total_sum += translation_table[s[i]]
            else:
                 total_sum -= translation_table[s[i]]
        
        # Account for last index that is not added. 
        total_sum += translation_table[s[-1]] 
        
        return total_sum 
