// array.d
import std.stdio;

void main() {
    int[5] arr = [1, 2, 3, 4, 5];
    write("Array elements are: ");
    foreach (element; arr) {
        write(element, " ");
    }
    writeln();
}
