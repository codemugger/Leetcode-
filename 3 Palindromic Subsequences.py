class Solution:
    def countPalindromicSubsequence(self, s: str) -> int:
        
        is_unique_palin_len_three = lambda word : len(word) == 3 
        table = {}
        
        # Essentially, we create a table that stores the each    character as the key and the value is a list containing the location indexes 
        for i in range(len(s)):
            if s[i] in table:
                table[s[i]] += [i]
            else:
                table[s[i]] = [i]
            
        total_count = 0 
        for char in table:
            if len(table[char]) > 1:
                start_index = table[char][0] + 1 
                last_index = table[char][-1] 
                total_count += len(set(s[start_index:last_index]))
        
        return total_count 
       
