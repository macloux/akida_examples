# Online documentation
Please refer to the [online documentation](https://doc.brainchipinc.com/) for
installation steps, user guides and APIs.

# Building the documentation
Documentation is based on [Sphinx](https://www.sphinx-doc.org/en/master/) and
can be generated locally from the repository top.

## Requirements:
* Python version: python >= 3.8
* TensorFlow version >= 2.10
* Sphinx version 2.1 or above

## Build steps
* *Optional*: create a virtual environment using
[Virtualenv](https://virtualenv.pypa.io/en/latest/) or
[Conda](https://docs.conda.io/en/latest/)

* Install akida packages and their requirements using the provided file:
~~~~
pip install -r requirements.txt
~~~~

* Install Sphinx additional modules used by the documentation:
~~~~
pip install sphinx_rtd_theme sphinx-gallery autodocsumm sphinx_design
~~~~

* Finally build using *sphinx-build* tool, refer to
[Sphinx tutorial](https://matplotlib.org/sampledoc/) for details on this command
line:
~~~~
sphinx-build -D plot_gallery=0 -b html ./doc ./build
~~~~

Note that by removing the *-D plot_gallery=0* option in the previous command,
examples will be executed for a nicer rendering but it will take much more time.

* Open *.build/index.html* once done

## Style check

Style check is based on [flake8](https://flake8.pycqa.org/en/latest/).

To align examples with python formatting rules:

```
autopep8 --ignore E402,E501 --in-place --recursive examples/
```

## Supported versions history
Versions are akida/cnn2snn packages ones. Please refer to https://github.com/Brainchip-Inc/akida_examples/releases for more details.

```mermaid
sequenceDiagram
    participant [...]
    participant 2.2.5
    participant 2.3.7
    participant 2.4.0
    participant Today
rect rgb(171, 170, 166)
    [...]-->>2.2.5: TensorFlow 2.8
    2.2.5->>Today: TensorFlow 2.10
    2.4.0->>+Today: TensorFlow 2.11/2.12
end
rect rgb(250, 229, 160)
    [...]-->>+2.4.0: Python 3.7 (EOL June 2023)
    [...]->>+Today: Python 3.8, 3.9, 3.10
    2.4.0->>+Today: Python 3.11
end
rect rgb(171, 170, 166)
    [...]-->>+2.4.0: Ubuntu 18.04 (EOL April 2023)
    [...]->>+Today: Ubuntu 20.04, 22.04
end
```
