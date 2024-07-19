' linked_list.vb
Module LinkedListExample
    Sub Main()
        Dim arr() As Integer = {1, 2, 3, 4, 5}
        Console.Write("Array elements are: ")
        For Each i As Integer In arr
            Console.Write(i & " ")
        Next
        Console.WriteLine()
    End Sub
End Module
