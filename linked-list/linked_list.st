" linked_list.st "
| arr |
arr := #(1 2 3 4 5).
Transcript show: 'Array elements are: '.
arr do: [:element | Transcript show: element printString; space].
Transcript cr.
