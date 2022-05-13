import json
import pandas as pd

obj = pd.read_json('train.jsonl', lines=True)
file = open('chemprot_train.csv', 'w')
for label, text in zip(obj['label'], obj['text']):
    file.write(label + '\t' + text + '\n')
file.close()
