https://www.gnu.org/software/bash/manual/bash.html

this is the first I've heard of a macroprocessor.
    - At its base, a shell is simply a macro processor that executes commands. The term macro processor means functionality where text and symbols are expanded to create larger expressions.

everything is a file 
    - A Unix shell is both a command interpreter and a programming language. As a command interpreter, the shell provides the user interface to the rich set of GNU utilities. The programming language features allow these utilities to be combined. Files containing commands can be created, and become commands themselves.

high level overview of how the language works 
    - 3.1.1 Shell Operation
    The following is a brief description of the shell’s operation when it reads and executes a command. Basically, the shell does the following:

    Reads its input from a file (see Shell Scripts), from a string supplied as an argument to the -c invocation option (see Invoking Bash), or from the user’s terminal.
    Breaks the input into words and operators, obeying the quoting rules described in Quoting. These tokens are separated by metacharacters. Alias expansion is performed by this step (see Aliases).
    Parses the tokens into simple and compound commands (see Shell Commands).
    Performs the various shell expansions (see Shell Expansions), breaking the expanded tokens into lists of filenames (see Filename Expansion) and commands and arguments.
    Performs any necessary redirections (see Redirections) and removes the redirection operators and their operands from the argument list.
    Executes the command (see Executing Commands).
    Optionally waits for the command to complete and collects its exit status (see Exit Status).

