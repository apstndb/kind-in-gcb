# kind-in-gcb
Hacky example of Kubernetes IN Docker in Google Cloud Build.
*Not for production pipeline usage*

```
$ docker build -t gcr.io/$PROJECT_ID/kind .
$ docker push gcr.io/$PROJECT_ID/kind

$ gcloud builds submit
```
