# Azure Tables

1. What is it?

    Azure Tables is a NoSQL data store service provided by Azure.
    It stores large amounts of semi-structured data and allows for fast and efficient querying using a key-based access model.
    Data is organized into tables, and each table can store billions of entities.

2. When to use it?

    Use Azure Tables when you need a highly scalable NoSQL data store for semi-structured data with simple key-based access.
    It is suitable for scenarios like storing configuration data, user profiles, and other data where a key-value or key-attribute data model is appropriate.

3. Example from DevOps Engineer point of view?

    A DevOps engineer may use Azure Tables to store configuration settings for applications or services.
    During the deployment process, scripts can retrieve configuration data from Azure Tables to customize the behavior of deployed applications.

4. Equivalent service in AWS:

    While AWS does not have a direct equivalent service for Azure Tables, Amazon DynamoDB is a similar NoSQL database service that provides key-value and document storage. DynamoDB can be used for similar use cases.