# kind-in-gcb
Hacky example of Kubernetes IN Docker in Google Cloud Build.
*Not for production pipeline usage*

```
$ docker build -t gcr.io/$PROJECT_ID/kind .
$ docker push gcr.io/$PROJECT_ID/kind

$ gcloud builds submit
```

# Reference 
- Slide of [Cloud Build out of steps(Japanese)](https://docs.google.com/presentation/d/1hIsOmkS4F8Wk1peiPBYmuG03OILleG_xQBrGFwc0-eo/edit?usp=sharing)
