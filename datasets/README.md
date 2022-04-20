### Downloading datasets

All task data from Don't Stop Pretraining is available on a public S3 url; find the urls in `vendor/dont-stop-pretraining/environments/datasets.py`.

To to download the data for use outside of this repository, you will have to `curl` each dataset individually:

```bash
curl -Lo rct-sample/train.jsonl https://allennlp.s3-us-west-2.amazonaws.com/dont_stop_pretraining/data/rct-sample/train.jsonl
curl -Lo rct-sample/dev.jsonl https://allennlp.s3-us-west-2.amazonaws.com/dont_stop_pretraining/data/rct-sample/dev.jsonl
curl -Lo rct-sample/test.jsonl https://allennlp.s3-us-west-2.amazonaws.com/dont_stop_pretraining/data/rct-sample/test.jsonl
```

(adapted from the dont-stop-pretraining repo)
