---
aliases:
  - "Python behind the scenes #13: the GIL and its effects on Python multithreading"
doc_type: hypothesis-highlights
linter-yaml-title-alias: "Python Behind the Scenes #13: the GIL and Its Effects on Python Multithreading"
order: -1
tags: [processed]
title: "Python Behind the Scenes #13: the GIL and Its Effects on Python Multithreading"
url: >-
---

# Python Behind the Scenes #13: the GIL and Its Effects on Python Multithreading

## Metadata

- Author: [tenthousandmeters.com]()
- Title: Python behind the scenes #13: the GIL and its effects on Python multithreading
- Reference: https://tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/
- Category: #article

## Page Notes

## Highlights

- the GIL stands for the Global Interpreter Lock, and its job is to make the CPython interpreter thread-safe. — [Updated on 2021-10-07 18:58:24](https://hyp.is/OKKyNifbEey-Y_eZ3aUfMg/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- The GIL allows only one OS thread to execute Python bytecode at any given time — [Updated on 2021-10-07 18:58:34](https://hyp.is/PqC4cifbEey8Op-dVDeaBg/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- In a single-threaded Python program, the main thread is the only thread, and it never releases the GIL. — [Updated on 2021-10-07 18:59:10](https://hyp.is/VHD9uifbEeyhI_voYeDxdg/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- To acquire the GIL, a thread first checks whether some other thread holds the GIL. If this is not the case, the thread acquires the GIL immediately. — [Updated on 2021-10-07 18:59:53](https://hyp.is/bdWG9CfbEeyimQMnc4excQ/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Otherwise, it waits until the GIL is released. — [Updated on 2021-10-07 18:59:58](https://hyp.is/cMm8_ifbEeygmoNAjfHKVg/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- It waits for a fixed time interval called the switch interval (5 ms by default), and if the GIL is not released during that time, it sets the eval_breaker and gil_drop_request flags. The eval_breaker flag tells the GIL-holding thread to suspend bytecode execution, and gil_drop_request explains why. The GIL-holding thread sees the flags when it starts the next iteration of the evaluation loop and releases the GIL. It notifies the GIL-awaiting threads, and one of them acquires the GIL. It's up to the OS to decide which thread to wake up, so it may or may not be the thread that set the flags. — [Updated on 2021-10-07 19:00:37](https://hyp.is/iCpKWCfbEeyZH7d1RuvqDw/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Although Python threads cannot help us speed up CPU-intensive code, they are useful when we want to perform multiple I/O-bound tasks simultaneously. — [Updated on 2021-10-07 19:03:14](https://hyp.is/5cdbBifbEeysbHtK2antxQ/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- The conclusion here is that it's possible to speed up CPU-intensive Python code using multithreading if the code calls C functions that release the GIL. Note that such functions can be found not only in the standard library but also in computational-heavy third-party modules like NumPy. — [Updated on 2021-10-07 19:05:33](https://hyp.is/OHSqyifcEeyTPFtViNOHQA/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- The convoy effect takes place because each time the I/O-bound thread performs an I/O operation, it releases the GIL, and when it tries to reacquire the GIL after the operation, the GIL is likely to be already taken by the CPU-bound thread. So the I/O-bound thread must wait for at least 5 ms before it can set eval_breaker and gil_drop_request to force the CPU-bound thread release the GIL. — [Updated on 2021-10-07 19:08:34](https://hyp.is/pGYhoCfcEeyQChOd6YI7Bg/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Smaller switch intervals make I/O-bound threads more responsive. But too small switch intervals introduce a lot of overhead caused by a high number of context switches. — [Updated on 2021-10-07 19:12:00](https://hyp.is/Hx7YsCfdEeygHu9YgJjwYA/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- The GIL is so helpful because CPython increments and decrements integers that can be shared between threads all over the place. This is CPython's way to do garbage collection. — [Updated on 2021-10-07 19:17:57](https://hyp.is/9BVSOCfdEeyQAMMOLAWE7A/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- The GIL also simplifies the implementation of built-in mutable data structures. Lists, dicts and sets do not use locking internally, yet because of the GIL, they can be safely used in multi-threaded programs. — [Updated on 2021-10-07 19:18:47](https://hyp.is/EgKDiCfeEeyH3zeIaiCRCw/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Similarly, the GIL allows threads to safely access global and interpreter-wide data: loaded modules, preallocated objects, interned strings as so on. — [Updated on 2021-10-07 19:18:54](https://hyp.is/FgYQnifeEeyKvZ_tsUmjXA/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Finally, the GIL simplifies the writing of C extensions. Developers can assume that only one thread runs their C extension at any given time. Thus, they don't need to use additional locking to make the code thread-safe. When they do want to run the code in parallel, they can release the GIL. To sum up, what the GIL does is make the following thread-safe: reference counting; mutable data structures; global and interpreter-wide data; C extensions. — [Updated on 2021-10-07 19:19:09](https://hyp.is/HyDjDCfeEeybx78jgluNrg/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Garbage collection based on reference counting is not suited for multithreading. The only solution is to implement a tracing garbage collector that JVM, CLR, Go, and other runtimes without a GIL implement. — [Updated on 2021-10-07 19:20:13](https://hyp.is/RL4vcCfeEeyQFiPsuXPS6w/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

- Removing the GIL breaks existing C extensions. There is no way around it. — [Updated on 2021-10-07 19:20:17](https://hyp.is/RyG_PifeEeyul7umNpfUlQ/tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/) — Group: #Public

