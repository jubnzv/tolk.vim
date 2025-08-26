// Single line comment with TODO item
/* Simple block comment */

/*
 * Multi-line block comment
 * // Some string
 * TODO: This should be highlighted
 * FIXME: This too
 * NOTE: And this
 * XXX: xxx
 */

fun main(): void {
    // Comment inside function
    var x: int = 42; // End of line comment

    /* Inline block comment */ var y: int = 0xFF;

    // Math operators: + - * / % should work
    var result: int = x + y * 2 / 3;

    /*
     * Another multi-line comment
     * with some code examples:
     * var test = 1 + 2;
     * HACK: This is a hack
     * TODO: Whatever
     */
}
