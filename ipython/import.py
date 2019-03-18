import numpy as np
import pandas as pd


def to_df(d):
    """
        Generate a pandas dataframe
    """
    return pd.DataFrame(d)

df = to_df({"a": np.arange(10),
            "b": np.random.choice(["a", "b"], size=10)})

y = np.arange(10)
print("\n\033[38;5;219mCurrent available functions:"
      "\n\tto_df(d: dict) -> pd.DataFrame")
print("\033[38;5;93mCurrent available variables:"
      "\n\tdf: pd.DataFrame"
      "\n\ty: np.array")
