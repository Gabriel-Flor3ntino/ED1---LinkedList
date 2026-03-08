# ED1 - Linked List & Data Structures

A C library implementing fundamental data structures for educational purposes, including **Linked Lists** and **Dynamic Float Vectors**. Built in a Linux environment with performance testing capabilities.

## 📁 Project Structure

```
/workspace
├── include/          # Header files
│   ├── linked_list.h
│   ├── float_vector.h
│   └── mytime.h
├── src/              # Source implementations
│   ├── linked_list.c
│   ├── float_vector.c
│   └── mytime.c
├── apps/             # Test applications
│   ├── test_linked_list.c
│   ├── test_float_vector.c
│   └── performance tests...
├── bin/              # Compiled binaries
├── lib/              # Static library (libed.a)
├── obj/              # Object files
├── Makefile
└── README.md
```

## 🔧 Features

### Linked List (`linked_list.h`)
- `SNode` - Singly linked list node
- `LinkedList` - Dynamic linked list structure
- Operations:
  - `LinkedList_create()` / `LinkedList_destroy()`
  - `LinkedList_is_empty()`
  - `LinkedList_add_first()` / `LinkedList_add_last()`
  - `LinkedList_remove()` / `LinkedList_remove_v1()`
  - `LinkedList_size()` / `LinkedList_size_slow()`
  - `LinkedList_get_val()`, `LinkedList_first_val()`, `LinkedList_last_val()`
  - `LinkedList_print()`

### Float Vector (`float_vector.h`)
- Dynamic array for floating-point values
- Operations:
  - `FloatVector_create()` / `FloatVector_destroy()`
  - `FloatVector_size()` / `FloatVector_capacity()`
  - `FloatVector_append()` / `FloatVector_set()` / `FloatVector_get()`
  - `FloatVector_print()`

### Time Utilities (`mytime.h`)
- Helper functions for performance measurement

## 🚀 Build & Run

### Prerequisites
- GCC compiler
- GNU Make
- Linux environment (behavior on Windows is untested)

### Commands

| Command | Description |
|---------|-------------|
| `make` | Compile the library and all test applications |
| `make clean` | Remove all generated files (binaries, objects, library) |
| `make clean_apps` | Remove only compiled applications |
| `make run` | Run the float vector test |
| `./bin/<test_name>` | Run a specific test application |

### Example Usage
```bash
# Build everything
make

# Run linked list tests
./bin/test_linked_list

# Run performance benchmarks
./bin/test_linked_list_add_last_performance
./bin/test_linked_list_add_last_slow_performance_chart
./bin/test_linked_list_add_last_fast_performance_chart

# Run exercise solutions
./bin/test_linked_list_exercises
./bin/test_linked_list_exercises_2
```

## 📝 Notes

- **Educational Purpose**: This project was created for learning and practicing data structures in C.
- **Feedback Welcome**: All critiques and suggestions are appreciated to improve both logic and functionality.
- **Platform**: Developed on Linux. Windows compatibility is not guaranteed.

## 🙏 Thank You for Visiting!

Feel free to explore, learn, and contribute!
