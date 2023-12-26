# Mojo Gym

Small hands-on exercises to practice the basics of the Mojo programming language.
Ideal for developers who are new to Mojo but know basics of Python.

Inspired by [Rustlings](https://github.com/rust-lang/rustlings) project that has a similar approach to teach Rust.

## Getting started

1. [Install Mojo](https://docs.modular.com/mojo/manual/get-started/)
2. Clone this repository or better yet, fork it and clone your fork.
3. Install necessary Python packages to run the exercises:
    ```bash
    pip3 install -r requirements.txt
    ```
    Feel free to use virtualenv or any other tool to manage your Python packages.
4. Run the exercises:
    ```bash
    python mojo_gym.py
    ```
5. Follow the instructions and have fun!

## Learning approach

This is an optional reading if you are interested in how mojo-gym structures the learning material.

Because Mojo is very similar to Python, we omit some of the basic concepts that are shared between the two languages, for example, control flow statements. We focus on the concepts that are unique to Mojo.

We start with variables, functions, and value ownership (+ mutability). This is a bit different from what Mojo documentation has. The reason is we try to avoid introducing new concepts and we also want to build new knowledlge on top of the previous exercises.

When you are familiar with the previous topics, we move to structs, value lifecycle, metaprogramming and traits.

We finish the learning with exercises on Python integration and modules/packages in Mojo.

Hopefully, you will find this project useful and fun!
