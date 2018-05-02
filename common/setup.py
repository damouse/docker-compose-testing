from setuptools import setup, find_packages

setup(
    name="common",
    # DO NOT EDIT THE VERSION STRING MANUALLY
    version="2.12",
    author="Left Hand Robotics",
    description="LHR Robot Code",
    packages=find_packages(),

    install_requires=[
        'websockets==4.0.1',
    ]
)

