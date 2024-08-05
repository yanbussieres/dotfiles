# 🏃‍♂️🏃‍➡️🏃‍♂️🏃‍♀️‍➡️

## Vision: 
- cloud functions (sprinters) running until their task~s~ 
- less possible cohesion between the sprinters
- in doubt, add sprinters 

## local development
```sh

export GCLOUD_PROJECT=ovet-3bbf5
export GCLOUD_LOCATION=us-central1
gcloud auth application-default login

GENKIT_ENV=dev firebase emulators:start --inspect-functions
genkit start --attach http://localhost:3100 --port 4001
```

