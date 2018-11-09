import os
from abc import abstractclassmethod

SQS_URL_DLQ = os.environ['SQS_URL_DLQ']


class FunctionSettings:
    """
    Inherited class shoud be named function name.
    """
    @abstractclassmethod
    def initialize(cls):
        """
        Initialize settings dedicated to specific function.
        """
        pass
