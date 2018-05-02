from setuptools import setup, find_packages

setup(
    name="snowbot",
    # DO NOT EDIT THE VERSION STRING MANUALLY
    version="2.12",
    author="Left Hand Robotics",
    description="LHR Robot Code",
    packages=find_packages(),

    entry_points={
        'console_scripts': [
            'snowbot=snowbot.main:main',
        ],
    },
)
