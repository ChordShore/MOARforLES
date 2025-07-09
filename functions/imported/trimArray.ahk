trimArray(arr) { ; Hash O(n)  https://stackoverflow.com/questions/46432447/how-do-i-remove-duplicates-from-an-autohotkey-array

    hash := {}, newArr := []

    for e, v in arr
        if (!hash[v])
            hash[(v)] := 1, newArr.push(v)

    return newArr
}