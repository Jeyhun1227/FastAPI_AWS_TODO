# todo-aws
> A Next.js to do list web app with FastAPI, AWS CDK, DynamoDB, Lambda Function

# Screenshot
![](https://raw.githubusercontent.com/ithunter101/FastAPI-AWS-Todo-App/main/screenshots/1.png)

# Self note for future reference

## Getting started

### Init CDK 
> cdk init --language typescript

### Shell command to activate .sh to zip
> chmod -x pkg_for_lambda.sh

> ./pkg_for_lambda.sh

### Deploy CDK
> cdk deploy

### Infra/lib/infra-stack.ts

```ts
    // Lambda function for the API
    const api = new lambda.Function(this, "API", {
      runtime: lambda.Runtime.PYTHON_3_9,
      code: lambda.Code.fromAsset("../api/lambda_function.zip"),
      handler: "todo.handler",
      environment: {
        TABLE_NAME: table.tableName,
      },
    });
```
