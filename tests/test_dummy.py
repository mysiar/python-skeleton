import unittest
from src.dummy import returns


class TestDummy(unittest.TestCase):
    def test(self):
        self.assertEqual(1, returns(1))
        self.assertEqual("string", returns("string"))
        self.assertTrue(True)
