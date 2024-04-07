To install aws cli in the Docker image we follow the [official aws guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

In this directory we include the `awscliv2-amd64.zip` (Linux) and `awscliv2-arm64.zip` (Mac M1). This is the AWS CLI downloaded with the following command:
```
$ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2-amd64.zip"
$ curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2-arm64.zip"
```

NOTE: We included the repository to enable the "reptiles" Docker build. It is not considered a best practice to 
fetch directly from third-party dependencies.